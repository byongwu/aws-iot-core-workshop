IOT_ENDPOINT=$(jq -r .endpointAddress < endpoint-setup.out)
SCRIPT=~/environment/aws-iot-core-workshop/code/labBasicPubSub.py
python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "#" -m subscribe -w

