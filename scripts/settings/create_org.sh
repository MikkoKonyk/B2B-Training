#!/usr/bin/env bash

export FORCE_SHOW_SPINNER=true

start=`date +%s`

echo "deleting previous scratch org"
sfdx force:org:delete -u b2b_trial -p
echo "creating new scratch org"
sfdx force:org:create -s -f ./config/project-scratch-def.json -a b2b_trial -d 30
echo "installing Cloud Craze package"
sfdx force:package:install --package 04t3w0000011OnsAAE -w 100
echo "push metadata"
sfdx force:source:push -f
echo "add Permission Set"
sfdx force:user:permset:assign -n B2BAdminClone
echo "open scratch org"
sfdx force:org:open

end=`date +%s`
runtime=$((end-start))
echo "executing time = $runtime"