#!/usr/bin/env python3
"""
Author : seth <seth@localhost>
Date   : 2023-07-03
Purpose: Rock the Casbah
"""

import argparse


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description="Crow's Nest - - Choose the correct article",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('word',
                        metavar='word',
                        help='A word')

    parser.add_argument('-s',
                        '--starboard',
                        help='A boolean flag for starboard side',
                        action='store_true',
                        default=False)

    return parser.parse_args()


# --------------------------------------------------
def main():
    """Chose correct article based on inputted word"""

    args = get_args()
    word = args.word
    starboard = args.starboard

    # if word[0].lower() in 'aeiou':
    #     article = 'an'
    # else:
    #     article = 'a'

    article = 'an' if word[0].lower() in 'aeiou' else 'a'
    side = 'starboard' if starboard else 'larboard'

    # output = 'Ahoy, Captain, ' + article + ' ' + word + ' off the larboard bow!'
    # output = 'Ahoy, Captain, {} {} off the larboard bow!'.format(article, word)
    # output = f'Ahoy, Captain, {article} {word} off the larboard bow!'

    # print(output)
    print(f'Ahoy, Captain, {article} {word} off the {side} bow!')

# --------------------------------------------------
if __name__ == '__main__':
    main()
