# Hello world application with Node.js and AWS
This is an example of how to create a simple [Node.js](http://nodejs.org) application and deploy it to [AWS](https://aws.amazon.com/) using [AWS CloudFormation](https://aws.amazon.com/pt/cloudformation/).

**Prerequisites**
- An active [AWS account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/).
- A Linux machine with [AWS Command Line Interface](https://aws.amazon.com/cli/) configured for your account.
- An [EC2 Key Pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).
- [git](https://git-scm.com/) if you want to clone the project using command line. If you prefer, you may download the project instead of clonning it. This way, git is optional.
- Optionally, if you want to run the application locally, you will need to install [Node.js](https://nodejs.org/en/download/package-manager/).


**Quickstart**
1. Clone or download this repository:
    - Clonning: `git clone https://github.com/julianoalberto/hello-world.git`
    - Downloading: [https://github.com/julianoalberto/hello-world/archive/master.zip](https://github.com/julianoalberto/hello-world/archive/master.zip)

2. If you downloaded the repository, extract the downloaded zip file.

3. Enter the folder where you extracted or cloned the project and edit `aws/deploy.sh` to change the below parameters that will be used by AWS CLI to create the infrastructure and deploy the application. Most of them must be set with values pertaining to your AWS account.

- region: the [AWS region](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) where this stack will be deployed.
```shell
region=us-east-2
```

- availabilityZone: [AWS availability zone](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) for this stack.
```shell
availabilityZone=us-east-2b
```

- instanceType: the [EC2 instance type](https://aws.amazon.com/ec2/instance-types/). Make sure it is available in the selected region.
```shell
instanceType=t2.micro
```

- instanceImageId: the [EC2 image](https://aws.amazon.com/amazon-linux-ami/). Make sure it is available in the selected region.
```shell
instanceImageId=ami-02bcbb802e03574ba
```

- instanceKeyName: your [key pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#having-ec2-create-your-key-pair) for accessing the EC2 instance.
```shell
instanceKeyName=julianoalberto
```
- vpc: your [VPC](https://console.aws.amazon.com/vpc/).
```shell
vpc=vpc-487b7720
```

- loadBalancerSubnets: enter two [subnets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html) separated by comma. They will be used by the load balancer.
```shell
loadBalancerSubnets=subnet-5222163a,subnet-855a38ff
```

- stackName: the name of this [CloudFormation](https://www.amazonaws.cn/en/cloudformation/) stack. This does not need to be changed, unless you want to name it differently.
```shell
stackName=planetStack
```

4. Enter the `aws` folder:
```shell
cd aws
```

5. Run `deploy.sh`:
```shell
sh deploy.sh
```

6. If all runs fine, the command output will be similar to this:
```shell
Waiting for changeset to be created..
Waiting for stack create/update to complete
Successfully created/updated stack - planetStack
App URL: PlanetLoadBalancer-1231455801.us-east-2.elb.amazonaws.com
```

7. Access the output App URL with a browser and see the hello-world application running.

8. If you get any kind of error, follow the steps below:

 - run the command below (replace planetStack with the name you used in step 3, in case you changed it):
 ```shell
 aws cloudformation describe-stack-events --stack-name planetStack --output json
 ```
 - look for events with ResourceStatus equals to CREATE_FAILED. This will indicate which resource is failing to be created. Most likely, resources creation will fail due to misconfigurations in the parameters done in step 3.
 - fix the parameters in ```deploy.sh``` and before running it again, delete the stack:
  ```shell
 aws cloudformation delete-stack --stack-name planetStack
  ```

**Running locally**

1. Clone or download this repository:
- Clonning: `git clone https://github.com/julianoalberto/hello-world.git`
- Downloading: [https://github.com/julianoalberto/hello-world/archive/master.zip](https://github.com/julianoalberto/hello-world/archive/master.zip)

2. If you downloaded the repository, extract the downloaded zip file.

3. Enter the folder where you extracted or cloned the project and run:
```shell
npm install
node .
```

4. Access the application on [localhost:3000](http://localhost:3000)