#!/bin/bash\n\

while true; do
  aws s3 sync "$DATA_FOLDER/" "s3://$S3_BUCKET/"
  sleep $(( 60*60*INTERVAL_IN_HOURS ))
done
