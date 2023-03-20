from lxml import etree
import sys
import os
import re

NAMESPACES = {"tei": "http://www.tei-c.org/ns/1.0", "abv": "http://ossetic-studies.org/ns/abaevdict"}

def multireplace(string, replacements, ignore_case=False):
    """
    Given a string and a replacement map, it returns the replaced string.
    :param str string: string to execute replacements on
    :param dict replacements: replacement dictionary {value to find: value to replace}
    :param bool ignore_case: whether the match should be case insensitive
    :rtype: str
    """
    if not replacements:
        # Edge case that'd produce a funny regex and cause a KeyError
        return string
    
    # If case insensitive, we need to normalize the old string so that later a replacement
    # can be found. For instance with {"HEY": "lol"} we should match and find a replacement for "hey",
    # "HEY", "hEy", etc.
    if ignore_case:
        def normalize_old(s):
            return s.lower()

        re_mode = re.IGNORECASE

    else:
        def normalize_old(s):
            return s

        re_mode = 0

    replacements = {normalize_old(key): val for key, val in replacements.items()}
    
    # Place longer ones first to keep shorter substrings from matching where the longer ones should take place
    # For instance given the replacements {'ab': 'AB', 'abc': 'ABC'} against the string 'hey abc', it should produce
    # 'hey ABC' and not 'hey ABc'
    rep_sorted = sorted(replacements, key=len, reverse=True)
    rep_escaped = map(re.escape, rep_sorted)
    
    # Create a big OR regex that matches any of the substrings to replace
    pattern = re.compile("|".join(rep_escaped), re_mode)
    
    # For each match, look up the new string in the replacements, being the key the normalized old string
    return pattern.sub(lambda match: replacements[normalize_old(match.group(0))], string)

def replace_cyr(text: str) -> str:
  repl = {
    "А": "A",
    "а": "a",
    "В": "B",
    "г": "r",
    "Е": "E",
    "е": "e",
    "з": "s",
    "и": "u",
    "К": "K",
    "к": "k",
    "М": "M",
    "Н": "H",
    "О": "O",
    "о": "o",
    "п": "n",
    "Р": "P",
    "р": "p",
    "С": "C",
    "с": "c",
    "Т": "T",
    "т": "m",
    "У": "Y",
    "у": "y",
    "Х": "X",
    "х": "x"
  }
  return multireplace(text, repl)


filename = sys.argv[1]
# filename = "abaev_vol3_en.xml"
# filename = "entries/abaev_sælyn.xml"

changed = False

with open(filename, "r", encoding='utf-8') as f:
  tree = etree.parse(f)

  for elem in tree.xpath("//abv:example[not(@xml:lang = 'ru')]/tei:quote[not(@n='0')]/text() | \
    //abv:example[not(@xml:lang = 'ru')]/tei:quote[not(@n='0')]/tei:oRef/text() | \
    //tei:mentioned[not(@xml:lang = 'ru' or starts-with(@xml:lang, 'ru-') or @extralang = 'ru' or contains(@extralang,' ru') or contains(@extralang,'ru ') or \
    @xml:lang = 'bg' or starts-with(@xml:lang, 'bg-') or @extralang = 'bg' or contains(@extralang,' bg') or contains(@extralang,'bg ') or \
    @xml:lang = 'uk' or starts-with(@xml:lang, 'uk-') or @extralang = 'uk' or contains(@extralang,' uk') or contains(@extralang,'uk ') or \
    @xml:lang = 'be' or starts-with(@xml:lang, 'be-') or @extralang = 'be' or contains(@extralang,' be') or contains(@extralang,'be ') or \
    @xml:lang = 'orv' or starts-with(@xml:lang, 'orv-') or @extralang = 'orv' or contains(@extralang,' orv') or \
    contains(@extralang,'orv '))]/*[(local-name() = 'w' or local-name() = 'm' or local-name() = 'c' or local-name() = 'phr' or local-name() = 's') \
    and not(@n = '0')]/text()",
    namespaces=NAMESPACES):
    parent = elem.getparent()
    if elem.is_text:
      newtext = replace_cyr(parent.text)
      if newtext != parent.text:
        parent.text = newtext
        changed = True
    elif elem.is_tail:
      newtext = replace_cyr(parent.tail)
      if newtext != parent.tail:
        parent.tail = newtext
        changed = True

if changed:
  tree.write(filename, encoding='utf-8')
  # with open(filename, "w", encoding="utf-8-sig") as f:
  #   f.truncate(0)
  #   f.write('<?xml version="1.0" encoding="UTF-8"?>' + etree.tostring(tree, encoding='utf-8').decode("utf-8"))

# tree.write(os.path.splitext(filename)[0]+'-proc.xml', encoding='utf-8')
# tree.write(sys.stdout.buffer, encoding='utf8')
# tree.write(filename, encoding='utf-8')
