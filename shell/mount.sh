#!/bin/sh

# デスクトップ, ドキュメントをマウント
if [ ! -d /desktop ]; then
	mount $(reg query "hkcu\software\microsoft\windows\currentversion\explorer\shell folders" | grep desktop | awk '{ print $3 }' | sed s/\\\\/\\//g | sed s/\\r//) /desktop
fi
if [ ! -d /documents ]; then
	mount $(reg query "hkcu\software\microsoft\windows\currentversion\explorer\shell folders" | grep personal | awk '{ print $3 }' | sed s/\\\\/\\//g | sed s/\\r//) /documents
fi
