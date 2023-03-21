#!/bin/sh
# takes usernames.csv as input and creates Ultra training courses for that user

DATE=$(date +"%Y%m%d%H%M%S")

echo -e "\nUploading user file to Blackboard Learn..."

#copies the sandbox and companion courses
# this endpoint needs to allow for EXACT COURSE COPY.  If not, the companion course Discussion posts and demo students will NOT copy.
./course.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/course/store  --data-bin @-
# this was used when we had an Ultra specific node
#sleep 2
#./node.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/courseassociation/store  --data-bin @-
#adds user to training course, sandbox and ultra companion courses
sleep 2
./membership.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/membership/store  --data-bin @-

#save a copy of the processed file
echo -e "\nCopying the usernames.csv file into processed_files\n"
cp usernames.csv processed_files/usernames-$DATE.csv
