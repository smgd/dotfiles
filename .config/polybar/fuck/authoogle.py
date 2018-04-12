from fuck import auth
import os

import re
au = re.search(r'\((.*)\)', auth()).group(1).split()
command = "xdg-open 'https://www.google.ru/search?q=" + "+".join(au) + "'"
os.system(command)