#!/bin/awk -f

BEGIN {
        FS=",";
        OFS=",";

#prints header row
	print "EXTERNAL_COURSE_KEY,EXTERNAL_PERSON_KEY,ROLE,DATA_SOURCE_KEY";

        }


{
print "sandbox."$1"-ultra-sandbox,"$1",N,DEV"
print "sandbox."$1"-ultra-companion,"$1",P,DEV"
print "bbtrain-2022-TLO-ULTRA-ESSENTIALS-V8,"$1",S,TRAINING"
}
