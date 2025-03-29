docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID nishantmenaria/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID nishantmenaria/$JOB_NAME:latest

docker push nishantmenaria/$JOB_NAME:$BUILD_ID

docker push nishantmenaria/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID nishantmenaria/$JOB_NAME:$BUILD_ID nishantmenaria/$JOB_NAME:latest
