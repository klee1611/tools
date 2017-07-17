#!/usr/bin/env bash

main()
{
	local full_filename=$(basename $1)
	local path="${1%%${full_filename}}"
	local filename="${full_filename%.*}"
	local extension="${full_filename##*.}"
	local middle_extension="${filename##*.}"
	if [ "tar" == ${middle_extension} ]; then
		extension="${middle_extension}.${extension}"
		filename="${filename%.*}"
	fi

	case ${extension} in
		"tar")
			tar xvf $1
			;;
		"gz")
			gzip -d $1
			;;
		"tar.gz")
			tar zxvf $1
			;;
		"bz")
			bunzip2 $1
			;;
		"tar.bz")
			tar jxvf $1
			;;
		"bz2")
			bunzip2 $1
			;;
		"tar.bz2")
			tar jxvf $1
			;;
		"xz")
			xz -d $1
			;;
		"tar.xz")
			tar Jxvf $1
			;;
		"Z")
			uncompress $1
			;;
		"tar.Z")
			tar Zxvf $1
			;;
		"tgz")
			tar zxvf $1
			;;
		"tar.tgz")
			tar zxvf $1
			;;
		"7z")
			7z x $1
			;;
		"zip")
			unzip $1
			;;
		"rar")
			unrar e $1
			;;
		"lha")
			lha -e $1
			;;
		*)
			printf "wrong file type: ${extension}, cannot extract\n"
			;;
	esac
}

main $1
