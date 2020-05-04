#!/usr/bin/env python3

from pathlib import Path
from datetime import datetime

initialized_file_path = Path.joinpath(Path.home(), '.dotfile.initialized')

def check_initialized() -> (bool, str):
    try:
        handle = open(initialized_file_path, 'r')
        timestamp = handle.readline()
        return True, timestamp
    except FileNotFoundError:
        return False, ''
    else:
        return False, ''

def initialize():
    with open(initialized_file_path, 'w') as handle:
        now = datetime.now().ctime()
        handle.write(now)
        handle.close()
        print('Wrote .dotfile.initialized for {}'.format(now))

def main():
    initialized, timestamp = check_initialized()
    if initialized:
        print('Was initialized at {}'.format(timestamp))
        raise SystemExit

    initialize()

if __name__ == "__main__":
    main()
