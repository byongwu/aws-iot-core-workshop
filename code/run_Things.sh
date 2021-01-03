IOT_ENDPOINT=$(jq -r .endpointAddress < endpoint-setup.out)
THING_NAME=${PWD##*/}
SCRIPT=~/environment/aws-iot-core-workshop/code/labBasicPubSub.py
python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem  -c ./service-certificate-${THING_NAME}.pem  -k ./private-${THING_NAME}.key -id ${THING_NAME} -t aws-iot-core-workshop-telemetry/${THING_NAME}

