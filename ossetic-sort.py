#!/usr/bin/python3

import sys

lines = sys.stdin.read().strip().split('\n')

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
    'ǵ': '0', 'Ǵ': '0',
    'ǧ': 'A', 'Ǧ': 'A',
    'i': 'B', 'I': 'B',
    'ī': 'C', 'Ī': 'C',
    'j': 'D', 'J': 'D',
    'k': 'E', 'K': 'E',
    'ḱ': 'F', 'Ḱ': 'F',
    'l': 'G', 'L': 'G',
    'm': 'H', 'M': 'H',
    'n': 'I', 'N': 'I',
    'o': 'J', 'O': 'J',
    'p': 'K', 'P': 'K',
    'pʼ': 'L', 'Pʼ': 'L',
    'q': 'M', 'Q': 'M',
    'r': 'N', 'R': 'N',
    's': 'O', 'S': 'O',
    't': 'P', 'T': 'P',
    'tʼ': 'Q', 'Tʼ': 'Q',
    'u': 'R', 'U': 'R',
    'v': 'S', 'V': 'S',
    'w': 'T', 'W': 'T',
    'x': 'U', 'X': 'U',
    'y': 'V', 'Y': 'V',
    'z': 'W', 'Z': 'W'
        }

def abaev_key(x):
    x = x.replace('entries/abaev_','')
    #print (x)
    if x[0] == 'ᵆ':
        x = x[1:]
    return ''.join(abaev_alphabet.get(ch, ch) for ch in x)

lines.sort(key = abaev_key)
print("\n".join(lines))

#words = ["æfsymær", "am", "Barastyr"]

#words.sort(key=abaev_key)
#print(words)

