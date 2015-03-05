#!/bin/bash

cd xware

debian/rules get-orig-source
for destarch in i386 armhf; do
  debuild -uc -us -b -a${destarch}
done

debuild clean
rm -f ../*.build
rm -f ../*.changes
