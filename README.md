# dotfiles

This repo contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

- brew
- go-task

## Installation

Clone the repo to your system
```
$ git clone git@github.com:oswdm/dotfiles.git
$ cd dotfiles
```

## Setup

Use taskfile to install brew dependencies and create symlinks
```
$ task brew
$ task stow
```
