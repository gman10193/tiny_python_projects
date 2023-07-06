#!/usr/bin/env python3
"""
Author : seth <seth@localhost>
Date   : 2023-07-05
Purpose: Rock the Casbah
"""

import argparse


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description='Picnic game',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('item',
                        metavar='str',
                        type=str,
                        nargs='+',
                        help='Item(s) to bring')

    parser.add_argument('-s',
                        '--sorted',
                        help='Sort the items',
                        action='store_true',
                        default=False)

    return parser.parse_args()


# --------------------------------------------------
def main():
    """Main program"""

    args = get_args()
    items = args.item
    bool_sort = args.sorted

    if len(items) == 1:
        output = f'You are bringing {items[0]}.'
    elif len(items) == 2:
        if bool_sort:
            sorted_items = sorted(items)
        else:
            sorted_items = items
        output = f'You are bringing {sorted_items[0]} and {sorted_items[1]}.'
    else:
        if bool_sort:
            sorted_items = sorted(items)
        else:
            sorted_items = items
        end_item = sorted_items.pop(-1)
        output = ", ".join(sorted_items)
        output = f'You are bringing {output}, and {end_item}.'

    if bool_sort:
        pass

    print(output)


# --------------------------------------------------
if __name__ == '__main__':
    main()
