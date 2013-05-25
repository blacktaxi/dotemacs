#!python
'''Haskell lint script for Emacs.
Translated from this: https://gist.github.com/1241073
'''
from __future__ import print_function

import sys
import subprocess
import re

ghc = 'ghc'

ghc_options = ['-Wall']
ghc_packages = []

command = [ghc, '--make', '-fno-code', sys.argv[1]] + ghc_options + ['-package %s' % x for x in ghc_packages]

try:
    out = subprocess.check_output(command, stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
    out = e.output

for l in out.splitlines():
    r1 = re.match('(^\S+\.l?hs)(:\d*:\d*:)\s?(.*)', l)
    r2 = re.match('^\s+(.+)', l)

    if r1:
        print('\n{0}{1}{2}'.format(r1.groups()[0], r1.groups()[1], r1.groups()[2].strip()))
    if r2:
        print('{0} '.format(r2.groups()[0].strip()))

print('\n')


