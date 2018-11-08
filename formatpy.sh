#!/bin/bash

# pip install autopep8

find . -name "*\.py" | xargs -iT autopep8 -i T
