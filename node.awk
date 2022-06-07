#!/bin/awk -f

BEGIN {
        FS=",";
        OFS=",";

#prints header row
	print "EXTERNAL_ASSOCIATION_KEY,EXTERNAL_COURSE_KEY,EXTERNAL_NODE_KEY,DATA_SOURCE_KEY";

        }


{
print "U_sandbox."$1"-ultra-sandbox,sandbox."$1"-ultra-sandbox,U,ULTRA"
print "U_sandbox."$1"-ultra-companion,sandbox."$1"-ultra-companion,U,ULTRA"
}
