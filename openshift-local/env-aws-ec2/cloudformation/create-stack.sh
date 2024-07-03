#!/usr/bin/env bash


stack_name="sample-openshift-local-ec2"
#stack_name="sample-openshift-local-ng"
#stack_name="sample-openshift-local-sg"
#stack_name="sample-openshift-local-vpc"
template_path="ec2-cfn.yml"
#template_path="ng-cfn.yml"
#template_path="sg-cfn.yml"
#template_path="vpc-cfn.yml"
parameters="EnvType=Local"
#aws cloudformation create-stack --stack-name ${stack_name} --template-body file://${template_path} --capabilities CAPABILITY_IAM
# It is better cloudformation deploy option because command can execute even if stack existing(no need to delete existing stack).

if [ "$parameters" == "" ]; then
    aws cloudformation deploy --stack-name ${stack_name} --template-file ${template_path} --capabilities CAPABILITY_IAM
else
    aws cloudformation deploy --stack-name ${stack_name} --template-file ${template_path} --parameter-overrides ${parameters} --capabilities CAPABILITY_NAMED_IAM
fi