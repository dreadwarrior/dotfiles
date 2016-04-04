#!/bin/bash

#__DIR__="`dirname \"$0\"`"
#source ${__DIR__}/functions.sh

while [[ $# -ge 1 ]]; do
	key="$1"
	shift

	case $key in
		-d|--delete-only )
			DELETE_ONLY=YES
			shift
		;;
		* )
			# unknown option
		;;
	esac
done

FILELIST=$(ls -R ./Documentation/*.rst ./Documentation/*/*.rst ./Documentation/*.txt)

for F in ${FILELIST}; do
	if [[ -f $F && `head -c 3 $F` == $'\xef\xbb\xbf' ]]; then
		# file exists and has UTF-8 BOM
		mv $F $F.bak
		tail -c +4 $F.bak > $F
		rm -f $F.bak
		echo "Removed BOM from $F"
	fi

	if [[ "${DELETE_ONLY}" != YES ]]; then
		sed -i '1s/^/\xef\xbb\xbf/' "$F"
		echo "Re-applied BOM to ${F}"
	fi
done
