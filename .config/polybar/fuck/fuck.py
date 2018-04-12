#!/usr/bin/env python

import requests
import argparse
import re

parser = argparse.ArgumentParser()
parser.add_argument('-l', '--lang', default='en')
parser.add_argument('-s', '--size', default=150)
args = parser.parse_args()

while True:
    r = requests.get("https://api.forismatic.com/api/1.0/?method=getQuote&lang=" + args.lang +"&format=text")
    quote = r.text.replace('  ', ' ').replace(' )', ')').replace('  ', ' ').replace('( ', ')').strip()
    if len(quote) < args.size:
        break

def auth():
    return quote
print(quote)