#!/bin/bash

# Copy data to the share directory
if [ ! -e ${PREFIX}/share/DamID-Seq ]; then
    mkdir -p ${PREFIX}/share/DamID-Seq
fi

cp Perl_scripts/*.txt ${PREFIX}/share/DamID-Seq

# Copy scripts to the bin directory
if [ ! -e ${PREFIX}/bin ]; then
    mkdir -p ${PREFIX}/bin
fi

cp Perl_scripts/*.pl ${PREFIX}/bin/
chmod a+x ${PREFIX}/bin/*.pl
