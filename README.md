# 3Tier-AWS-Terraform
Our 3-Tier architecture has three subnet tiers split across two availability zones. The web subnets also have a VPC routing table that will provide it access to the internet. The application and database tiers will not have such access; their routing tables will only allow internal network communication.

The **Web Tier** Component will deploy the resources for handling web requests. This includes the load balancer, EC2 instances, auto scaling, and security groups.

The **App Tier** Component will deploy the resources for handling web server requests. This includes the app server load balancer, EC2 instances, auto scaling, and security groups.

The **Database** Component will deploy the resources for running an RDS instance in a VPC. This component will deploy a security group, subnet group, and an instance.
![3-Tier-Architecture-AWS-Terraform](https://user-images.githubusercontent.com/52391654/117586240-3d62f300-b15a-11eb-807e-50b3ac77f3b2.png)

## Prerequisites
You should have the Terraform CLI setup on your computer. 

You can follow the official https://learn.hashicorp.com/tutorials/terraform/install-cli to install this. 

You can follow the official https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html for installing latest AWS CLI version.

You can use IDE like visual studio code setup on your computer. You can follow the official https://code.visualstudio.com/download to learn how to do this.

### Running the Code

1) Type in your terminal:

   $ git clone https://github.com/noiloomman/3tier-AWS-Terraform.git
   
   $ cd aws_terraform/
   
2) Next, a baseline directory and file structure as follows.
   
   aws_terraform/
   
   ├── main.tf
   
   ├── outputs.tf
   
   └── variables.tf
   
   └── env/
   
       └──dev.tfvars

2) Modify the Main Conf File
   Open the main.tf file and change the following configuration.
   
   Example
   
   **Define region and AWS profile**
   
     provider "aws" {
     
       region  = "ap-southeast-1"
       
       profile = "my-own-profile"             #Use VS code and create a profile using AWS acces key and secret key
       
     }

   This will define the AWS provider, set the region to work in, and specify what credentials to use.   
   I used VS code and creates a profile using AWS acces key and secret key defining the location (Singapore) and shape (subnet structure) of our VPC network.
   
   You can write in the name of your AWS profile to use e.g. “default” in main.tf

3) Run Terraform Init   

   Now let’s initialize the Terraform project. At your CLI, enter in this command.
   
   $ terraform init

5) Plan Changes

   Let’s run the Terraform plan commands to see if we setup everything correctly.

   $ terraform plan -var-file=env/dev.tfvars

5) Apply Changes

   Now, let’s apply the changes to your account. Note that this you are responsible for any AWS charges incurred.

   You will be prompted to proceed. Enter ‘yes’.

   $ terraform apply -var-file=env/dev.tfvars

   Congrats! Your infrastructure has been deployed.

6) Run Terraform Destroy

   Last step is to destroy your infrastructure. Run this command:

   $ terraform destroy -var-file=env/dev.tfvars
