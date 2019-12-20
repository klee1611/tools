#!/usr/bin/env bash
case "$OSTYPE" in
  solaris*)
	  echo "SOLARIS" ;;
  darwin*)
	  echo "OS X" ;;
  linux*)
	  echo "LINUX" ;;
  bsd*)
	  echo "BSD" ;;
  msys*)
	  echo "WINDOWS" ;;
  *)
	  echo "unknown: $OSTYPE" ;;
esac
