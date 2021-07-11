#!/usr/bin/env python3
import argparse
import os


def delete_file(path):
    if os.path.isfile(path) or os.path.islink(path):
        try:
            os.remove(path)
            return True
        except Exception as e:
            print(f"Failed to remove file {path}. {e}")
            return False
    else:
        print(f"Error: File {path} not found.")
        return False


def delete_files(filename):
    with open(filename) as f:
        for d_path in f:
            delete_file(d_path.rstrip('\n'))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-f", "--file",
        help="a file contains paths for all files needed to be deleted"
    )
    args = parser.parse_args()
    delete_files(args.file)
