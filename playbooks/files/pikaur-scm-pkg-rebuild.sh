#!/bin/bash

SCM_PKG_PATTERN="-(git)$"

if command -v pikaur >/dev/null ; then
    pikaur -Qqm |
    grep -E -i -e "${SCM_PKG_PATTERN}" |
    xargs -rtn1 pikaur -S --dynamic-users --noconfirm --noedit --nodiff --ignore-outofdate
fi
