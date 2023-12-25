# AWS Cheat Sheet for DevOps Beginners

A quick reference guide for beginners in DevOps to get started with Amazon Web Services (AWS).

## Table of Contents
- [Introduction](#introduction)
- [AWS Management Console](#aws-management-console)
- [Key AWS Services](#key-aws-services)
- [AWS CLI Basics](#aws-cli-basics)
- [IAM (Identity and Access Management)](#iam-identity-and-access-management)
- [EC2 (Elastic Compute Cloud)](#ec2-elastic-compute-cloud)
- [S3 (Simple Storage Service)](#s3-simple-storage-service)
- [VPC (Virtual Private Cloud)](#vpc-virtual-private-cloud)
- [AWS CodeCommit](#aws-codecommit)
- [AWS CodeBuild](#aws-codebuild)
- [AWS CodeDeploy](#aws-codedeploy)
- [AWS CodePipeline](#aws-codepipeline)
- [Best Practices](#best-practices)
- [Additional Resources](#additional-resources)
- [Best Practices](#best-practices)
- [Additional Resources](#additional-resources)

## Introduction
Amazon Web Services (AWS) is a comprehensive cloud computing platform provided by Amazon. It offers a mix of Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS) offerings.

## AWS Management Console
- **Access**: Navigate to [AWS Management Console](https://aws.amazon.com/console/) to access AWS resources.
- **Dashboard**: Provides an overview of your AWS account and access to various AWS services.

## Key AWS Services
- **Compute**: EC2, Lambda, ECS (Elastic Container Service), EKS (Elastic Kubernetes Service)
- **Storage**: S3, EBS (Elastic Block Store), EFS (Elastic File System)
- **Database**: RDS, DynamoDB
- **Networking**: VPC, Route 53, API Gateway
- **Developer Tools**: CodeCommit, CodeBuild, CodeDeploy, CodePipeline

## AWS CLI Basics
- **Installation**: [Install the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
- **Configuration**: Run `aws configure` to set up your credentials.
- **Basic Commands**: 
  - List S3 buckets: `aws s3 ls`
  - Describe EC2 instances: `aws ec2 describe-instances`

## IAM (Identity and Access Management)
- **Users**: Create and manage AWS user accounts.
- **Groups**: Manage groups of users.
- **Roles**: Define permissions to access resources.
- **Policies**: Attach to users, groups, or roles to grant permissions.

## EC2 (Elastic Compute Cloud)
- **Instances**: Virtual servers in the AWS cloud.
- **AMI (Amazon Machine Image)**: Pre-configured templates for instances.
- **EBS Volumes**: Persistent block storage volumes for instances.

## S3 (Simple Storage Service)
- **Buckets**: Containers for storing objects (files).
- **Objects**: Files and associated metadata stored in buckets.
- **Features**: Lifecycle policies, versioning, and access control.

## VPC (Virtual Private Cloud)
- **Network Isolation**: Define a virtual network within AWS.
- **Subnets**: Divide your network inside your VPC.
- **Security Groups**: Set rules to control traffic into and out of resources.

# AWS CI/CD Services Cheat Sheet

This cheat sheet is a quick reference guide to AWS CI/CD services, including CodeBuild, CodeDeploy, CodeCommit, and CodePipeline, suitable for beginners and practitioners.


## AWS CodeCommit
A fully-managed source control service that hosts secure Git-based repositories.

### Key Features
- **Secure**: Integrates with IAM for user authentication.
- **Scalable**: Automatically scales to accommodate growing project repositories.
- **Collaborative**: Allows multiple developers to work on a project.

### Basic Commands
- Clone a repository: `git clone <repository-url>`
- Push changes: `git push`
- Pull changes: `git pull`

## AWS CodeBuild
A fully managed build service that compiles source code, runs tests, and produces software packages.

### Key Features
- **Managed Build Environment**: No servers to manage or provision.
- **Scalable**: Automatically scales to meet build volume.
- **Integration**: Integrates with other AWS services and third-party tools.

### Basic Usage
- Define build specs in a `buildspec.yml` file.
- CodeBuild can be triggered manually, by code changes, or through CodePipeline.

## AWS CodeDeploy
A deployment service that automates application deployments to various compute services such as EC2, AWS Fargate, and AWS Lambda.

### Key Features
- **Automated Deployments**: Reduces the need for error-prone manual operations.
- **Centralized Control**: Manage and track application deployments.
- **Rollbacks**: Supports automated rollbacks in case of failures.

### Deployment Methods
- **In-place deployment**: Updates the application on existing instances.
- **Blue/green deployment**: New instances are provisioned for the new version.

## AWS CodePipeline
A continuous delivery service that automates the release process for a reliable and fast software release cycle.

### Key Features
- **Workflow Automation**: Automates the build, test, and deploy phases.
- **Customizable Stages**: Each pipeline stage can be customized.
- **Integration**: Works with CodeCommit, CodeBuild, CodeDeploy, and third-party services.

### Pipeline Setup
- Define the pipeline structure in AWS Management Console or using a CloudFormation template.
- Configure source, build, deploy, and approval stages.

## Best Practices
- **IAM Roles**: Assign appropriate roles for each service.
- **Environment Variables**: Use environment variables for sensitive information.
- **Version Control**: Use CodeCommit or other version control services to track changes.
- **Monitoring**: Integrate with AWS CloudWatch for monitoring and alerting.

## Additional Resources
- [AWS CodeCommit Documentation](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
- [AWS CodeBuild Documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html)
- [AWS CodeDeploy Documentation](https://docs.aws.amazon.com/codedeploy/latest/userguide/welcome.html)
- [AWS CodePipeline Documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html)

## Best Practices
- **Security**: Always follow the principle of least privilege.
- **Monitoring**: Use CloudWatch for monitoring and alerting.
- **Cost Management**: Regularly review and optimize your costs.
- **Documentation**: Keep up with the [AWS Documentation](https://docs.aws.amazon.com/).

## Additional Resources
- [AWS Training and Certification](https://aws.amazon.com/training/)
- [AWS Whitepapers](https://aws.amazon.com/whitepapers/)
- [AWS Blogs](https://aws.amazon.com/blogs/aws/)

---

*Embark on your AWS journey with confidence!*


*Streamline your software release process with AWS CI/CD tools!*
