#!/usr/bin/env bash
set -eu -o pipefail

# install python2
pacman -S python2

# install some scientific python things
pacman -S --noconfirm --noprogress --needed python2-numpy
pacman -S --noconfirm --noprogress --needed python2-scipy
pacman -S --noconfirm --noprogress --needed python2-sympy
pacman -S --noconfirm --noprogress --needed python2-sqlalchemy
pacman -S --noconfirm --noprogress --needed python2-mpi4py

# and some things from the AUR
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-rpyc'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-dill'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-pfft-fix'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-pox
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-multiprocess-fix'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-pathos-3fix'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-pyina-git'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-joblib'
su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm python2-mystic'