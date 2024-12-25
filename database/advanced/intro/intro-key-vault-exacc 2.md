# Introduction

## About this Workshop
### Overview
*Estimated Time to complete the workshop*: 55 minutes

This workshop is the THIRD of three Hands-On Labs dedicated to encrypting data at rest within the Oracle Database. The first workshop, DB Security – ASO (Transparent Data Encryption & Data Redaction) covers transparent data encryption (TDE). The second workshop covers the important topic of managing encryption keys. Here, we migrate an encrypted database to Oracle Key Vault for centralized key management. This third workshop covers the important topic of managing encryption keys of Exadata CLoud at customer (ExaCC) using OKV. Here, we will migrate an encrypted database running on Exadata Cloud at Customer (ExaCC) to Oracle Key Vault for centralized key management.

Based on an OCI architecture, deployed in a few minutes with a simple internet connection, it allows you to test DB Security use cases in a complete environment already pre-configured by the Oracle Database Security Product Manager Team.

Now, you no longer need important resources on your PC (storage, CPU or memory), nor complex tools to master, making you completely autonomous to discover at your rhythm all new DB Security features.

### Components
The complete architecture of the **DB Security Hands-On Labs** is as following:

  ![DBSec LiveLabs Archi](./images/dbseclab-archi.png "DBSec LiveLabs Archi")

It's composed of 1 VM and one ExaCC VMcluster with at least 1 database:
  - **Key Vault Server VM** (for Advanced workshop only)

During this mini-lab, you'll use different resources to interact with these VMs:
  - SSH Terminal Client
  - Oracle Key Vault Web Console
  - Oracle OCI for multiple resources such as IAM , Keystore, Vault Keys & Secrets and also ExaCC VMCluster Console

So that your experience of this workshop is the best possible, DO NOT FORGET to perform "Lab: *Initialize Environment*" to be sure that all these resources are correctly set!

### Objectives
This Hands-On Labs give the user an opportunity to learn how to configure the ExaCC databases to leverage OKV for TDE .

In this mini-lab, you will learn how to use the **Oracle Key Vault** (OKV) on Exadata Cloud at Customer (ExaCC).

The entire DB Security PMs Team wishes you an excellent workshop!

You may now [proceed to the next lab](#next).

## Acknowledgements
- **Author** - Abdi Mohammadi, Master Principal Cloud Architect 
- **Contributors** - N/A
- **Last Updated By/Date** - 12/23/2024
