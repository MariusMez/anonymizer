#!/bin/bash
cd /opt/anon
PYTHONPATH=$PYTHONPATH:. python3 anonymizer/bin/anonymize.py $@