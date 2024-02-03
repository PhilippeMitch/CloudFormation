# Project Description
In this project, we deployed a web servers for a highly available web app to an NGINX server running on an EC2 instance using CloudFormation.
![](https://github.com/PhilippeMitch/CloudFormation/blob/main/images/ProjectArchitectureDiagram.png)
We first develop a diagram to present web app infrastructure and then interpret the instructions and create a matching CloudFormation script.
We wrote the code that creates and deploys the infrastructure and application for an Instagram-like app from the ground up. 
We deployed the networking components, followed by servers, security roles.
# Project Environment
In order to complete this project, you'll need to use these tools:
* Access to AWS Console.
* Vs Code
* AWS CLI v2
# Project files
![](https://github.com/PhilippeMitch/CloudFormation/blob/main/images/directory-tree.png)
* **bach files**: In the bash file we have the command to create, update and delete the stack
*  **json files**: The *json* files have the parameters to create the stacks
*   **yml files**: In the yml files we have the network infrastructure and the web app infrastructure
# Run the project
To run the project make sure you have access to `AWS Console` and do the following steps:
## Environment Set Up
* Install AWS CLI v2
* Create an IAM user with Administrator permissions
* Create an Access key for the new user (Select Command Line Interface (CLI) when creaing the Access Key)
* Configure the AWS CLI usin the `Access key`, `Secret access key`
## Execute script
Create the network infrastructure
```
  chmod +x run.sh
  ./run.sh create network config/network.yml params/network-parameters.json
```
Create the web app infrastructure
```
  ./run.sh create webservice config/udagram.yml params/udagram-parameters.json
```
