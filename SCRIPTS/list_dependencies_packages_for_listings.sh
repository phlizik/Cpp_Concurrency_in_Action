#!/bin/bash
# urls:
# - http://stackoverflow.com/questions/1420017/regular-expression-to-match-c-include-file
# - http://stackoverflow.com/questions/12671406/bash-removing-part-of-a-string
find src -type f -exec grep -H '#include' {} \; | egrep -o '#include ((<[^>]+>)|("[^"]+"))' | cut -d '<' -f 2 | cut -d '>' -f 1