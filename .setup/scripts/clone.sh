#!/bin/bash

git clone git@github.com:ijapesigan/lib-2000-2009-book.git
rm -rf "$PWD.git"
mv lib-2000-2009-book/.git "$PWD"
rm -rf lib-2000-2009-book
