#!/usr/bin/env bash

stack_name="sample-openshift-local-ec2"
#stack_name="sample-openshift-local-ng"
#stack_name="sample-openshift-local-sg"
#stack_name="sample-openshift-local-vpc"

aws cloudformation delete-stack --stack-name ${stack_name}