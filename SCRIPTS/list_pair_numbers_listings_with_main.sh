#!/bin/bash
# url: http://www.linfo.org/tr.html
find src -type f -exec grep -H 'main(' {} \; | egrep -o '+[0-9].+[0-9]' | tr ' \n' ';'
