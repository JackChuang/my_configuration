#! /bin/sh
#
# shell.sh
# Copyright (C) 2017 jackchuang <jackchuang@Jack-desktop>
#
# Distributed under terms of the MIT license.
#

file=
result= 


# calculate avg for a file
cat $file | awk '{sum+=$1} END {print "Average = ", sum/NR}'                                                                                               


# no "enter"
echo -n "" >> $result
# execute command and redirect the out put
echo `ls` >> $result
# TODO: can use | to add on more commands









