#!/bin/bash
find src -type f -exec grep -H '#include' {} \;
