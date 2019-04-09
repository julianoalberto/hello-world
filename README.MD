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

2. Change to hello-world/aws folder:
```shell
cd hellow-world/aws
```
3. Run deploy.sh:
```shell
sh deploy.sh
```