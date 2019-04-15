#!/bin/bash
region=us-east-2
availabilityZone=us-east-2b
instanceType=t2.micro
instanceImageId=ami-02bcbb802e03574ba
instanceKeyName=julianoalberto
vpc=vpc-487b7720
loadBalancerSubnets=subnet-5222163a,subnet-855a38ff
stackName=planetStack

aws cloudformation deploy \
--region $region \
--template-file stack.yaml \
--stack-name $stackName \
--parameter-overrides \
InstanceKeyName=$instanceKeyName \
InstanceType=$instanceType \
InstanceImageId=$instanceImageId \
AvailabilityZone=$availabilityZone \
VPC=$vpc \
LoadBalancerSubnets=$loadBalancerSubnets && \
echo "App URL: $(aws cloudformation describe-stacks --region=$region --stack-name $stackName --query 'Stacks[0].Outputs[?OutputKey==`LoadBalancerURL`].OutputValue' --output text)"