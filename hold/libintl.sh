#!/bin/bash
set -e

wget https://ftpmirror.gnu.org/gettext/gettext-0.26.tar.xz
tar xvf gettext-0.26.tar.xz
cd gettext-0.26/gettext-runtime/intl
cd ../../..
rm -rf gettext-0.26
rm gettext-0.26.tar.xz