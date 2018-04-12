#!/usr/bin/env python

import requests
import argparse
import re
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('-l', '--lang', default='en')
parser.add_argument('-s', '--size', default=150)
args = parser.parse_args()

me = subprocess.check_output("whoami", shell=True).decode("utf-8").strip()

while True:
    r = requests.get("https://api.forismatic.com/api/1.0/?method=getQuote&lang=" + args.lang +"&format=text")
    quote = r.text.replace('  ', ' ').replace(' )', ')').replace('  ', ' ').replace('( ', '(').strip()
    au = re.search(r'\((.*)\)', quote)
    if len(quote) < args.size and au != None:
        break

def quoteLog():
    with open('/home/' + me + '/.config/polybar/random-quote/log.txt', 'w') as qLog:
        qLog.write("+".join(au.group(1).split()))

quoteLog()
print(quote)