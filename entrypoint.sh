#!/bin/bash
cd /opt/anon
PYTHONPATH=$PYTHONPATH:. python3.6 anonymizer/bin/anonymize.py $@