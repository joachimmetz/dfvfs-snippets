#!/bin/bash
#
# Script to run Python 2 tests on Travis-CI.
#
# This file is generated by l2tdevtools update-dependencies.py, any dependency
# related changes should be made in dependencies.ini.

# Exit on error.
set -e;

python2 ./run_tests.py

if test -f tests/end-to-end.py;
then
	PYTHONPATH=. python2 ./tests/end-to-end.py --debug -c config/end-to-end.ini;
fi
