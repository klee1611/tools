#!/usr/bin/env bash
if [ $# -ne 3 ]; then
    printf "\nUsage: $0 REPLACED_WORD REPLACING_WORD PATH\n"
    printf "Replace REPLACED_WORD for all files under path PATH with REPLACING_WORD\n\n"
    exit 1
fi

for f in $(grep -irnl "$1" "$3"); do
    sed -i "s/"$1"/"$2"/g" $f
done
