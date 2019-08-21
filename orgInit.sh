sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:package:install --package 04tB0000000Y9x8IAC -w 20
sfdx force:source:push
sfdx force:user:permset:assign -n pingpong
sfdx force:org:open