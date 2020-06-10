# edx_installation

## AWS services 

Director - Provision a t2.small instance with atleast 20gb of space. Make sure you create a security group or use the existing director security group. In the inbound rules the SSH should be from you IP. Also make sure you create a unique key pair for the director. The purpose of the dirctor is act a a central hub for orchestration of installation and control of the edx services from a single server. 

Edx-platform - Provision a t3a.xlarge instance with atleast of 100gb of space. Make sure you create a security group or add an existing edx-platfrom security group. In the Inbound rules, the ssh must be set only from the director instance. Create a key-pair and copy it to the Director instance. 

RDS instance - Provision a RDS Mysql instance which the edx-platform and the insights share. Check this [documentation](https://openedx-deployment.doc.opencraft.com/en/latest/shared/RDS/) for the details of provisioning the RDS instance.

Insights - Provision an t3a.large instance with atleast 50gb of space. Create an security group with the inbound ssh to the director instance. Create a ssh key pair and copy it to the Director instance. 

EMR and Elastic search instances for Insights - Beware EMR instances are a costly affair, Do not provision one and keep them running until it is absolutely necessary. For insights we provision a EMR instance run the job and shut it down. This [document](https://openedx-deployment.doc.opencraft.com/en/latest/analytics/AWS_setup/) lists all the necessary services that are required by the insights setup. 


Note: Keep a eye on the services that are running.

## Installtion

### Director

SSH into director instance and clone the repository

'''
git clone https://github.com/vrookai/edx_installation
'''

Setup the director by running 

'''
sudo bash ./bootstrap_director.sh
'''

To update the repository, run 

'''
sudo bash ./update_director.sh
'''

### Edx-platform


