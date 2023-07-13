#!/usr/bin/env python3
"""
Author : seth <seth@localhost>
Date   : 2023-07-06
Purpose: Encode telephone number from provided string using the "Jump 5" coding
"""

import argparse


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description='Jump the Five',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('string',
                        type=str,
                        metavar='str',
                        help='Input text')

    return parser.parse_args()


# --------------------------------------------------
def main():
    """Jump 5 Main"""

    args = get_args()
    text = args.string
    jumper = {'1': '9', '2': '8', '3': '7', '4': '6', '5': '0', '6': '4', '7': '3', '8': '2', '9': '1', '0': '5'}
    encoded_text = ''

    for char in text:
        encoded_text += jumper.get(char, char)


    print(encoded_text)


# --------------------------------------------------
if __name__ == '__main__':
    main()
