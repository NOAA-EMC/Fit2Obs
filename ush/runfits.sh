#!/bin/bash

set -euax

exp=$1  CDATE=$2  COMROT=/dev/null

export HOMEcfs=$fitdir/..
export EXECcfs=$HOMEcfs/exec
export USHcfs=$HOMEcfs/ush
export NDATE=$EXECcfs/ndate.x

export OUTPUT_FILETYPE=${OUTPUT_FILETYPE:-netcdf}

echo $ARCDIR                 ; mkdir -p $ARCDIR
export FIT_DIR=$ARCDIR/fits  ; mkdir -p $FIT_DIR
export HORZ_DIR=$ARCDIR/horiz; mkdir -p $HORZ_DIR

export DATA=$TMPDIR/$exp.$CDATE.fit2obstmp; rm -rf $DATA; mkdir -p $DATA
export COMLOX=$DATA/fitx; mkdir -p $COMLOX

echo "echo err_chk">$DATA/err_chk; chmod 755 $DATA/err_chk
echo "echo postmsg">$DATA/postmsg; chmod 755 $DATA/postmsg
job=test

$fitdir/scripts/excfs_gdas_vrfyfits.sh
