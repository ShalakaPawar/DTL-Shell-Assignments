#!/bin/sh

IFS=''
for f in normalTrafficTest.txt; do
	while read -r GET; do
		read -r UserAgent
		read -r Pragma
		read -r cachecontrol
		read -r Accept
		read -r AcceptEncoding
		read -r AccceptCharset
		read -r AcceptLanguage
		read -r Host
		read -r Cookie
		read -r Connection
	echo "${GET#*=}, ${UserAgent#*=}, ${Pragma#*=}, ${cachecontrol#*=}, ${Accept#*=}, ${AcceptEncoding#*=}, ${AcceptCharset#*=}, ${AcceptLanguage#*=}, ${Host#*=}, ${Cookie#*=}, ${Connection#*=}" >> outputfile.csv

	done < "$f"
done
