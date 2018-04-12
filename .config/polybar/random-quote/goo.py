#!/usr/bin/env python

import os
import subprocess

me = subprocess.check_output("whoami", shell=True).decode("utf-8").strip()

with open('/home/' + me + '/.config/polybar/random-quote/log.txt') as qLog:
    command = "xdg-open 'https://www.google.ru/search?q=" + qLog.readline() + "'"
os.system(command)