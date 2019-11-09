#!/usr/bin/env bash

defaults read > debug/settings-before.txt

echo "Toggle your setting and press any key"
read

defaults read > debug/settings-after.txt

# then show diff with your favourite tool
code --diff debug/settings-before.txt debug/settings-after.txt