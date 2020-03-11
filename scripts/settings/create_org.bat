SET mypath=%~dp0
SET mypath=%mypath:~0,-1%
SET start_time=%time%

echo start time %time%
echo "deleting previous scratch org"
call sfdx force:org:delete -u b2b_trial -p
echo "creating new scratch org"
call sfdx force:org:create -s -f %mypath%\..\config\project-scratch-def.json -a b2b_trial -d 10
echo "installing Cloud Craze"
call sfdx force:package:install --package 04t3w0000011OnsAAE -w 100
echo "push changes"
call sfdx force:source:push -f
echo "add Permission Set"
call sfdx force:user:permset:assign -n B2BAdminClone
echo "open org"
call sfdx force:org:open

SET end_time=%time%
echo start time %start_time%
echo end time %end_time%