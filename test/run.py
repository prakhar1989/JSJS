#!/usr/bin/python

from subprocess import Popen, PIPE, STDOUT
import difflib

test_location = "test/compiler-tests/"

def diff(expected, actual):
    diff = difflib.context_diff(expected, actual)
    delta = "".join(diff)
    return delta

def run_testcase(fname):
    test_type, test_name = fname.split("-")
    fpath = test_location + fname
    output_path = test_location + "out-" + test_name
    should_fail = test_type == "fail"
    should_pass = not should_fail

    p = Popen(["./jsjs.out", fpath], stdout=PIPE, stdin=PIPE, stderr=PIPE)
    out, err = p.communicate()
    if should_fail and not err:
        print "Test case failed: Expected test to fail but it passed."
    if not should_fail and not out:
        print "Test case failed: Expected test to pass but it failed."

    """ in case of failing test case, see if the output from compiler
    is same as the contents of the output file """
    if should_fail:
        actual = err
        with open(output_path) as f:
            expected = "".join(map(str.strip, f.readlines()))
            delta = diff(expected, actual)
            if not delta:
                print "SUCCESS"
            else:
                print "FAILURE"
                print delta

    if should_pass:
        actual = out


def run(testcases):
    for t in testcases:
        run_testcase(t)

if __name__ == "__main__":
    testcases = ["fail-assign1.jsjs", "pass-assign2.jsjs"]
    run(testcases)
