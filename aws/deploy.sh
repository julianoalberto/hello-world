
#aws ec2 create-key-pair --key-name planetKey > planetKey.pem
#chmod 400 planetKey.pem

aws cloudformation deploy --template-file stack.yaml --stack-name planetStack --output text --parameter-overrides InstanceKeyName=julianoalberto VPC=vpc-487b7720



#sudo yum update -y
#sudo amazon-linux-extras install -y epel
#sudo yum install -y nodejs
#sudo yum install -y git

#cd ~ && git clone https://github.com/julianoalberto/hello-world.git && cd hello-world && npm install && node .



#/var/lib/cloud/instances/i-055ddc7d8d7fa5466/scripts/part-001