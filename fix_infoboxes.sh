#! /bin/bash

sed 's/>[{][{]/>\n{{/g' | 
sed 's/[}][}][{][{]/}}\n{{/g'