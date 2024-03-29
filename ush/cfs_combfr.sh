#!/bin/bash
####  UNIX Script Documentation Block
#                .           .                                       .
# Script name:   combfr      Combine blocked BUFR files
#
# JIF contact:  Woollen     org: w/nmc2      date: 96-12-11
#
# Abstract: The combfr script combines (concatentes) up to thirty BUFR
#           files into one. Although the UNIX cat command will successully
#           combine byte string (-Fsystem) files, blocked files (-Fcos)
#           require special treatment, at least on the Crays. The script
#           uses the operational dump executable, combfr.x, to do the
#           combining.
#
# Script history log:
#   96-12-11  J. Woollen  original version for implementation
#
# Usage: combfr <input1> <input2> <input3> ... <inputN> <output>
#
#   Script parameters:
#     <inputn>   - list of input path/filenames to combine
#     <output>   - the BUFR output path/filename
#
#   Modules and files referenced:
#     scripts    : none
#     data cards : none
#     executables: combfr
#
# Remarks:
#
#   Note: 1) All files are assumed to have the same BUFR tables
#         2) All files to be combined must be -Fcos format"
#
#   Condition codes:
#     00 - no problem encountered
#     99 - parameter problem
#
# Attributes:
#
#   Language: UNICOS script
#   Machine:  CRAY
#
####
 
if [ $# -lt 2 ]
then
echo
echo "combfr will concatenate BUFR files"
echo
echo "Usage: combfr <input1> <input2> <input3> ... <inputN> <output>"
echo
echo "Note: 1) All files are assumed to have the same BUFR tables"
echo
exit 99
fi
 
COMX=$EXECcfs/cfs_combfr.x
COMI=combfr.in; >$COMI
 
while [ $# -gt 1 ] ; do
 echo $1 >> $COMI
 shift
done
 
ln -sf $1 fort.50; cat $COMI|$COMX
export err=$; err_chk
rm -f $COMI fort.50
