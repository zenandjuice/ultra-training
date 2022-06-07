#!/bin/sh
# takes usernames.csv as input and creates Ultra training courses for that user

DATE=$(date +"%Y%m%d%H%M%S")

echo -e "\nUploading user file to Blackboard Learn..."

./course.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/course/store  --data-bin @-
sleep 2
./node.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/courseassociation/store  --data-bin @-
sleep 2
./membership.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]/webapps/bb-data-integration-flatfile-[SAAS_ID]/endpoint/membership/store  --data-bin @-

#save a copy of the processed file
echo -e "\nCopying the usernames.csv file into processed_files\n"
cp usernames.csv processed_files/usernames-$DATE.csv
