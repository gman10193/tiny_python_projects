#!/usr/bin/env python3
"""
Author : seth <seth@localhost>
Date   : 2023-07-11
Purpose: Word Count
"""

import argparse
import sys


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description="Emulate wc (word count)",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    parser.add_argument(
        "file",
        metavar="FILE",
        type=argparse.FileType("rt"),
        help="Input files(s)",
        nargs="*",
        default=[sys.stdin],
    )

    return parser.parse_args()


# --------------------------------------------------
def main():
    """Main"""
    args = get_args()
    total_lines = 0
    total_words = 0
    total_bytes = 0

    for fh in args.file:
        num_lines = 0
        num_words = 0
        num_bytes = 0
        for line in fh:
            num_lines += 1
            num_bytes += len(line)
            for word in line.split():
                num_words += 1
        print(f"{num_lines:8}{num_words:8}{num_bytes:8} {fh.name}")
        total_lines += num_lines
        total_words += num_words
        total_bytes += num_bytes
    if len(args.file) > 1:
        print(f"{total_lines:8}{total_words:8}{total_bytes:8} total")


# --------------------------------------------------
if __name__ == "__main__":
    main()
