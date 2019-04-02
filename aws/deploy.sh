aws cloudformation deploy \
--region us-east-2 \
--template-file stack.yaml \
--stack-name planetStack \
# --parameter-overrides \
# InstanceKeyName=julianoalberto \
# InstanceType=t2.micro \
# InstanceImageId=ami-02bcbb802e03574ba \
# AvailabilityZone=us-east-2b \
# VPC=vpc-487b7720 \
# LoadBalancerSubnets=subnet-5222163a,subnet-855a38ff