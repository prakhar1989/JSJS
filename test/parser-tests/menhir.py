#!/usr/bin/python

from datetime import datetime

def interpret(s):
    from subprocess import Popen, PIPE, STDOUT
    p = Popen(["menhir", "--interpret", "src/parser.mly"], stdout=PIPE, stdin=PIPE, stderr=PIPE)
    p.stdin.write(s + "\n")
    res = p.communicate()[0].strip()
    return "ACCEPT" == res

def log(msg, success=False):
    color = u'\033[92m' if success else u'\033[91m'
    symbol = u'\u2713' if success else u'\u2717'
    print " ".join([color, symbol, msg])

def begintest(filename):
    with open(filename) as f:
        count = 0
        start = datetime.now()
        for line in f.readlines():
            tokens = line.strip()
            if len(tokens) and not tokens.startswith("//"):
                res = interpret(tokens)
                log("Passed" if res else "Fail", res)
                if not res:
                    print line
                count += 1
    diff = datetime.now() - start
    print "Ran %d tests in %fs" % (count, diff.total_seconds())

begintest("test/menhir-test.txt")
