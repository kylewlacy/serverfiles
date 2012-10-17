#!/bin/bash
if [ -z "$1" ]; then
  action="backup"
else
  action=$1
fi

if [ -z "$2" ]; then
  latest=$(git sf log --pretty="format:%H" --author=pacman -n1)
else
  latest=$2
fi
if [ -z "$3" ]; then
  prior=$(git sf log --pretty="format:%H" --author=pacman -n2 | sed -n 2p)
else
  prior=$3
fi

if [ "$action" == "backup" ]; then
  echo "==> Backing up..."
  git sf stash
  pacman -Qq > packages.txt
  pacman -Qi > packages_verbose.txt

  git sf add "$HOME/.pacman/packages.txt"
  git sf add "$HOME/.pacman/packages_verbose.txt"

  git sf commit --author="Pacman Backup Bot <kylewlacy@me.com>" -m "pacman backup at $(date +'%x %T%z')" > /dev/null
  git sf stash pop > /dev/null 2>&1
elif [ "$action" == "restore" ]; then
  echo "==> Restoring to $latest..."
  git sf checkout $latest -- "$HOME/.pacman/packages.txt"
elif [ "$action" == "list" ]; then
  echo "listing $latest"
  git sf show $latest:"$HOME/.pacman/packages.txt"
elif [ "$action" == "diff" ]; then
  echo "==> Diffing between $prior and $latest..."
  git sf diff $prior..$latest -- "$HOME/.pacman/packages.txt"
fi
