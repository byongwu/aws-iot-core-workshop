IOT_ENDPOINT=$(jq -r .endpointAddress < endpoint-setup.out)
SCRIPT=~/environment/aws-iot-core-workshop/code/labBasicPubSub.py
python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "#" -m subscribe -w
#python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "\$aws/events/#" -m subscribe -w
#python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "\$aws/events/thing/+/created" -m subscribe -w
#python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "\$aws/provisioning-templates/#" -m subscribe -w
#python ${SCRIPT} -e $IOT_ENDPOINT -r ./root-ca.pem -t "\$aws/certificates/#" -m subscribe -w

