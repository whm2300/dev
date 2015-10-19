#!/bin/bash

TMP_FILE=$(mktemp)
find . -name "*.py" > ${TMP_FILE}
cscope -bkq -i ${TMP_FILE}
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
