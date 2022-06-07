#!/bin/awk -f

BEGIN {
        FS=",";
        OFS=",";

#prints header row
	print "EXTERNAL_COURSE_KEY,COURSE_ID,COURSE_NAME,TEMPLATE_COURSE_KEY,AVAILABLE_IND,TERM_KEY,DATA_SOURCE_KEY";

        }


{
print "sandbox."$1"-ultra-sandbox,sandbox."$1"-ultra-sandbox,Ultra Training Sandbox Course (sandbox."$1"-ultra-sandbox),bbtrain-ultra-sandbox,Y,DEV,DEV"
print "sandbox."$1"-ultra-companion,sandbox."$1"-ultra-companion,Ultra Training Companion Course (sandbox."$1"-ultra-companion),bbtrain-ultra-companion,Y,DEV,DEV"
}
