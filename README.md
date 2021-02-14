# dotfiles

## Setup a new machine.

Clone the git repositiory to the new machine.

```sh
git clone --separate-git-dir=$HOME/.dotfiles \
    https://github.com/Charliekenney23/dotfiles.git tmpdotfiles && \
    rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
    rm -r tmpdotfiles
    
```

## Management

Use the `dotfiles` alias in `~/.aliases` to manage the git repository. This includes adding and removing files in your `$HOME` directory.
