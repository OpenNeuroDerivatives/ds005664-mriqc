#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/83b/b8411-8e23-489a-95d6-7dfdc67a958b
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds005664-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds005664-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds005664-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds005664-mriqc
