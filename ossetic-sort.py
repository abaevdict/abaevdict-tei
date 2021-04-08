#!/usr/bin/python3

import sys
import re

lines = sys.stdin.read().strip().splitlines()

abaev_alphabet = {
    'a': '0', 'A': '0',
    'æ': '1', 'Æ': '1',
    'b': '2', 'B': '2',
    'c': '3', 'C': '3',
    'cʼ': '4', 'Cʼ': '4',
    'd': '5', 'D': '5',
    'ʒ': '6', 'Ʒ': '6',
    'e': '7', 'E': '7',
    'f': '8', 'F': '8',
    'g': '9', 'G': '9',
    'g0': '9', 'G0': '9',
    'ǵ': '0', 'Ǵ': '0',
    'ǧ': 'A', 'Ǧ': 'A',
    'ǧ0': 'A', 'Ǧ0': 'A',
    'i': 'B', 'I': 'B',
    'ī': 'C', 'Ī': 'C',
    'j': 'D', 'J': 'D',
    'k': 'E', 'K': 'E',
    'k0': 'E', 'K0': 'E',
    'ḱ': 'F', 'Ḱ': 'F',
    'kʼ': 'E', 'Kʼ': 'E',
    'kʼ0': 'E', 'K0ʼ': 'E',    
    'l': 'G', 'L': 'G',
    'm': 'H', 'M': 'H',
    'n': 'I', 'N': 'I',
    'o': 'J', 'O': 'J',
    'p': 'K', 'P': 'K',
    'pʼ': 'L', 'Pʼ': 'L',
    'q': 'M', 'Q': 'M',
    'q0': 'M', 'Q0': 'M',
    'r': 'N', 'R': 'N',
    's': 'O', 'S': 'O',
    't': 'P', 'T': 'P',
    'tʼ': 'Q', 'Tʼ': 'Q',
    'u': 'R', 'U': 'R',
    'v': 'S', 'V': 'S',
    'w': 'T', 'W': 'T',
    'x': 'U', 'X': 'U',
    'x0': 'U', 'X0': 'U',
    'y': 'V', 'Y': 'V',
    'z': 'W', 'Z': 'W'
        }

def abaev_key(x):
    x = x.replace('entries/abaev_','')
    #print (x)
    if x[0] == '7' or x[0] == '-' or x[0] =='8' or x[0] == '6':
        x = x[1:]
    x = x.replace('a','/')
    x = x.replace('A', '/')
    x = x.replace('ā', '/')
    x = x.replace('Ā', '/')
    
    x = x.replace('æ', '1')
    x = x.replace('Æ', '1')
    
    x = x.replace('b', '2')
    x = x.replace('B', '2')
    
    x = x.replace('cʼ', '4')
    x = x.replace('Cʼ', '4')
    
    x = x.replace('c', '3')
    x = x.replace('C', '3')
    
    x = x.replace('d', '5')
    x = x.replace('D', '5')
    
    x = x.replace('ʒ', '6')
    x = x.replace('Ʒ', '6')
    
    x = x.replace('e', '7')
    x = x.replace('E', '7')
    
    x = x.replace('f', '8')
    x = x.replace('F', '8')

    x = x.replace('g0', '9')
    x = x.replace('G0', '9')
    
    x = x.replace('g', '9')
    x = x.replace('G', '9')
    
    x = x.replace('ǵ', '9')
    x = x.replace('Ǵ', '9')

    x = x.replace('ǧ0', 'A')
    x = x.replace('Ǧ0', 'A')
    
    x = x.replace('ǧ', 'A')
    x = x.replace('Ǧ', 'A')
    
    x = x.replace('i', 'B')
    x = x.replace('I', 'B')
    
    x = x.replace('ī', 'B')
    x = x.replace('Ī', 'B')
    
    x = x.replace('j', 'D')
    x = x.replace('J', 'D')

    x = x.replace('kʼ0', 'F')
    x = x.replace('Kʼ0ʼ', 'F')

    x = x.replace('kʼ', 'F')
    x = x.replace('Kʼ', 'F')

    x = x.replace('k0', 'E')
    x = x.replace('K0', 'E')
    
    x = x.replace('k', 'E')
    x = x.replace('K', 'E')

    x = x.replace('ḱʼ', 'F')
    x = x.replace('Ḱʼ', 'F')
    
    x = x.replace('ḱ', 'E')
    x = x.replace('Ḱ', 'E')

    x = x.replace('l', 'H')
    x = x.replace('L', 'H')
    
    x = x.replace('m', 'I')
    x = x.replace('M', 'I')
    
    x = x.replace('n', 'J')
    x = x.replace('N', 'J')
    
    x = x.replace('o', 'K')
    x = x.replace('O', 'K')
    
    x = x.replace('pʼ', 'M')
    x = x.replace('Pʼ', 'M')    
    
    x = x.replace('p', 'L')
    x = x.replace('P', 'L')

    x = x.replace('q0', 'N')
    x = x.replace('Q0', 'N')
    
    x = x.replace('q', 'N')
    x = x.replace('Q', 'N')

    x = x.replace('r', 'O')
    x = x.replace('R', 'O')
    
    x = x.replace('s', 'P')
    x = x.replace('S', 'P')

    x = x.replace('tʼ', 'R')
    x = x.replace('Tʼ', 'R')
    
    x = x.replace('t', 'Q')
    x = x.replace('T', 'Q')
    
    x = x.replace('u', 'S')
    x = x.replace('U', 'S')
    
    x = x.replace('ū', 'S')
    x = x.replace('Ū', 'S')
    
    x = x.replace('v', 'T')
    x = x.replace('V', 'T')
    
    x = x.replace('w', 'U')
    x = x.replace('W', 'U')

    x = x.replace('x0', 'V')
    x = x.replace('X0', 'V')
    
    x = x.replace('x', 'V')
    x = x.replace('X', 'V')
    
    x = x.replace('y', 'W')
    x = x.replace('Y', 'W')
    
    x = x.replace('z', 'X')
    x = x.replace('Z', 'X')
    
    #return ''.join(abaev_alphabet.get(ch, ch) for ch in x)
    return x

def makeletter(words, letter, regex):
    r = re.compile("^entries/abaev_[78-]?" + regex)
    alpha = list(filter(r.match, words))
    print("<div type='letter' xml:id='letter_" + letter + "'>")
    print("\t<head>" + letter + "</head>")
    for w in sorted(alpha, key=abaev_key):
        print("\t<xi:include href='" + w + "' parse='xml'/>")
    print("</div>")
    return [word for word in words if word not in alpha]

#print("<div>")
lines = makeletter(lines, "A", '[aAāĀ]')
lines = makeletter(lines, "Æ", '[æÆ]')
lines = makeletter(lines, "B", '[bB]')
lines = makeletter(lines, "C", '[cC][^ʼ]')
lines = makeletter(lines, "Cʼ", '[cC]ʼ')
lines = makeletter(lines, "D", '[dD]')
lines = makeletter(lines, "Ʒ", '[ʒƷ]')
lines = makeletter(lines, "E", '[eE]')
lines = makeletter(lines, "F", '[fF]')
lines = makeletter(lines, "G", '[gGǵǴ]')
lines = makeletter(lines, "Ǧ", '[ǧǦ]')
lines = makeletter(lines, "I", '[iIīĪ]')
lines = makeletter(lines, "J", '[jI]')
lines = makeletter(lines, "K", '[kKḱḰ][^ʼ]')
lines = makeletter(lines, "Kʼ", '[kKḱḰ]ʼ')
lines = makeletter(lines, "L", '[lL]')
lines = makeletter(lines, "M", '[mM]')
lines = makeletter(lines, "N", '[nN]')
lines = makeletter(lines, "O", '[oO]')
lines = makeletter(lines, "P", '[pP][^ʼ]')
lines = makeletter(lines, "Pʼ", '[pP]ʼ')
lines = makeletter(lines, "Q", '[qQ]')
lines = makeletter(lines, "R", '[rR]')
lines = makeletter(lines, "S", '[sS]')
lines = makeletter(lines, "T", '[tT][^ʼ]')
lines = makeletter(lines, "Tʼ", '[tT]ʼ')
lines = makeletter(lines, "U", '[uUūŪ]')
lines = makeletter(lines, "V", '[vV]')
lines = makeletter(lines, "W", '[wW]')
lines = makeletter(lines, "X", '[xX]')
lines = makeletter(lines, "Y", '[yY]')
lines = makeletter(lines, "Z", '[zZ]')
#print("</div>")
#print(lines)

#r = re.compile("^entries/abaev_[aAāĀ]")
#words = list(filter(r.match, lines))
#print("<div type='letter' xml:id='letter_a'>")
#for w in sorted(words, key=abaev_key):
    #print("\t<xi:include href='" + w + "' parse='xml'/>")
#print("</div>")

#r = re.compile("^entries/abaev_[æÆ]")
#words = list(filter(r.match, lines))
#print("<div type='letter' xml:id='letter_æ'>")
#for w in sorted(words, key=abaev_key):
    #print("\t<xi:include href='" + w + "' parse='xml'/>")
#print("</div>")

#lines.sort(key = abaev_key)
#print("\n".join(lines))

#words = ["æfsymær", "am", "Barastyr"]

#words.sort(key=abaev_key)
#print(words)

