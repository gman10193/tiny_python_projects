#!/usr/bin/env python3
"""
Author : seth <seth@localhost>
Date   : 2023-07-07
Purpose: Do the Harry Potter Howler thing
"""

import argparse
import os
import sys


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description='Rock the Casbah',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('text',
                        metavar='text',
                        type=str,
                        help='Input string or file')
    parser.add_argument('-o',
                        '--outfile',
                        help='Output filename',
                        metavar='str',
                        type=str,
                        default='')
    return parser.parse_args()


# --------------------------------------------------
def main():
    """Main function"""

    args = get_args()
    text = args.text
    outfile = args.outfile

    if os.path.isfile(text):
        if outfile == '':
            print(open(text).read().upper().rstrip())
        else:
            fh_outfile = open(outfile, 'wt')
            fh_outfile.write(open(text).read().upper().rstrip())
            fh_outfile.close()
    else:
        if outfile == '':
            print(text.upper())
        else:
            fh_outfile = open(outfile, 'wt')
            fh_outfile.write(text.upper())
            fh_outfile.close()


# --------------------------------------------------
if __name__ == '__main__':
    main()
