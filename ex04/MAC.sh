#! bin/bash

ifconfig -a | grep 'ether ' | tr -d '\t' | awk '{print $2}' | tr -d ' '
