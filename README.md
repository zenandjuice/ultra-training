# ultra-training
Simple scripts to add a list of users to a Blackboard Learn ultra training course, create companion and sandbox courses, and add those to a hierarchy.

Edit Ultra.sh and replace [SIS USERNAME], [SIS PASSWORD], [BLACKBOARD DNS], and [SAAS_ID]
Edit usernames.csv to have one username per row.

course.awk generates the course copy feed file.  Change headers and rows accordingly.
membership.awk generates the course membership (instructor based on username)
node.awk generates a Hierarchy feed file.  I add all Ultra courses to an "Ultra" node, for Ultra specific tools access.
