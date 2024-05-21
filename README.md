# dotfiles

This repo contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Stow

```
$ brew install stow
```

## Installation

Clone the repo to your system

```
$ git clone git@github.com:oswdm/dotfiles.git
$ cd dotfiles
```

Use stow to create symlinks

```
$ stow -t $HOME .
```

## Shell setup

Install shell and dependencies


```
$ brew install fish fisher starship zoxide
```

download fish plugins using fisher

```
$ fisher update
```

and set the theme

```
$ fish_config theme save "Catppuccin Frappe"
```

