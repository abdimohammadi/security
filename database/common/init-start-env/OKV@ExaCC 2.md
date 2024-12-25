OKV@ExaCC


Old OKV workshop: 

On your tenancy: https://livelabs.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=727&p210_wec=&session=111638793188482 
 

Oracle Exadata Cloud At Customer Workshop
https://osc-ws-download.us.oracle.com/ecc/#!index.md


Albert: 
1. Coded and executed the Managing Encryption Keys on External Devices steps. The pwd follow the same convention as the DB pwd, see bullet #3.
2. I don't see any step in the current livelab to create policy so it is likely that they provision it as well.
3. Please use the DB that is created already. It follow the existing ExaCC Workshop naming convention. I have created 3 CDB p2Db0 to P2Db2. You can run the following command on your OSD/SGD desktop to setup the environment including the pwd to access the DB, where X is the DB number, e.g. 0 for p2Db0, likewise secret OKVpwd0 , and 2 for P2Db2. You can echo $myPwd to get the pwd.


https://github.com/albertyckwok/eccOKV 


OKV instance: 
Compartment: 
oscnas001 (root)/ExaCC/ExaCC4/exacc4vm2
e4c2okv    ,  ocid1.instance.oc1.us-sanjose-1.anzwuljrvwc7bfac7writsh6wgx5megbqztmydlyulv6krhcji5qunk4b74a
10.26.2.144

OKV-Vault, ocid1.vault.oc1.us-sanjose-1.grtwgvvsaacpu.abzwuljrjtt67lufuel5hpntf2grcy5fwkn744sp5fcjrvasnmzmabcnmk6q 
Key: OKVmgmt-key , ocid1.key.oc1.us-sanjose-1.grtwgvvsaacpu.abzwuljr4w6gudixjpb4pvckehedss7h6m3mqvmqobfma7r4bfkjvpbjobza 
Secret: OKVpwd0 , ocid1.vaultsecret.oc1.us-sanjose-1.amaaaaaavwc7bfaaqjajyqiyxynfk6woroxu6nknbyiihyoyr7iwkj7racwa 
Secret Value: QkVzdHIwbmcjIyMw 

ssh -i /nas/pocs/ssbt173584/ssbt173584cluster.key  opc@10.26.2.144

$ set_password 




okv_dg:   ocid1.dynamicgroup.oc1..aaaaaaaayx6kuax6kfqp7uvdsz47rvoznewog5t7ttwzm6ukcr5qlsj52keq 
resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaagss7aepalgfhz46gpjgnc6x2rj4fevunhojbk77a5nholhdlliaq'	

okv-policy
Allow group id ocid1.dynamicgroup.oc1..aaaaaaaayx6kuax6kfqp7uvdsz47rvoznewog5t7ttwzm6ukcr5qlsj52keq to use secret-family in compartment id ocid1.compartment.oc1..aaaaaaaagss7aepalgfhz46gpjgnc6x2rj4fevunhojbk77a5nholhdlliaq
Allow group id ocid1.dynamicgroup.oc1..aaaaaaaayx6kuax6kfqp7uvdsz47rvoznewog5t7ttwzm6ukcr5qlsj52keq to use keystores in compartment id ocid1.compartment.oc1..aaaaaaaagss7aepalgfhz46gpjgnc6x2rj4fevunhojbk77a5nholhdlliaq
Allow service database to read secret-family in compartment id ocid1.compartment.oc1..aaaaaaaagss7aepalgfhz46gpjgnc6x2rj4fevunhojbk77a5nholhdlliaq



Keystore
KeyStore-OKV,   ocid1.dbkeystore.oc1.us-sanjose-1.anzwuljrvwc7bfaa6g2pycocbk2mlvsaqbgtd7ukpff4shzfm4of2wt7wm6q 
Connection IP Addresses: 10.26.2.144
Administrator Username: okv_rest_user
Administrator Password Secret: OKVpwd0



ExaCC: 
Compartment: 
oscnas001 (root)/ExaCC/ExaCC4/exacc4vm2
ecc4c2    , ocid1.vmcluster.oc1.us-sanjose-1.anzwuljrvwc7bfaam2jp3arnmyvothgu2ggmacychls5vorg4vi3la5h2fdq

VMCluster Network:
ecc4c2net,  ocid1.vmclusternetwork.oc1.us-sanjose-1.anzwuljrvwc7bfaawedvyqasmx3ff2qz6dvlt5ddobdcov5dgmqlhehzhhrq 


SSH Key  : /nas/pocs/ssbt173584/ssbt173584cluster.key  

ssh -i /nas/pocs/ssbt173584/ssbt173584cluster.key  opc@10.26.2.144

cp /nas/pocs/ssbt173584/ssbt173584cluster.key  ~/.ssh/ida.rsa  
sh  opc@10.26.2.144