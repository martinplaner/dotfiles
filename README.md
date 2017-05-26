# dotfiles

First the obligatory: "This is my dotfiles repo. There are many like it, but this one is mine."

This is my new approach to managing my dotfiles, since the old repo got a bit too messy over the years (for my taste).
A bit barebones at the moment, but nice and clean.

Heavily inspired by [Kraymer/F-dotfiles](https://github.com/Kraymer/F-dotfiles).

## Naming scheme

- lowercase for packages to install in `$HOME` (the default)
- titlecase for packages to install as root in `/`
- leading `@` for environment packages and subpackages
- leading `_` for non packages, that must not be *stowed*

## Secret files

Files containing confidential information are stored in a different (non-public) Git repository and are included using a Git submodule that has to be initialized and updated before it can be used.

    git submodule update --init
