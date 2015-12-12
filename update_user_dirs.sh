#!/bin/bash

e_flag=0
j_flag=0

while getopts "ej" option
do
   case $option in
      e)
         e_flag=1
         ;;
      j)
         j_flag=1
         ;;
      \?)
         cat <<_EOT_
Usage:
   update_user_dirs.sh [-e] [-j]

Description:
   ~/Documents, ~/Downloads 等のホームディレクトリ直下のディレクトリ名を
   英語化または日本語化します。

Options:
   -e ディレクトリ名を英語化します。
   -j ディレクトリ名を日本語化します。
_EOT_
         exit 1
         ;;
   esac
done

if [ $e_flag -eq 1 ]; then
   LANG=C xdg-user-dirs-gtk-update
elif [ $j_flag -eq 1 ]; then
   xdg-user-dirs-gtk-update
fi