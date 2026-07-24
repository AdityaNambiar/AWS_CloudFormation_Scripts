# CFT scripts dependency order for various projects.

### Ansible Configuration Management Project - CFT script dependency order:

1. CreateVPC_PublicSubnet.yaml  

         ./run_aws_cfm.sh c -t network/CreateVPC_PublicSubnet.yaml -n ansiblenet
  
2. CreateS3Bucket.yaml  
        
         ./run_aws_cfm.sh c -t storage/CreateS3Bucket.yaml -n ansible-s3

3. CreateIAMRole.yaml  

         ./run_aws_cfm.sh ccap -t iam/CreateIAMRole.yaml -n ansible-s3-iam-role --cap CAPABILITY_NAMED_IAM

4. CreateS3FileSystem.yaml  

         ./run_aws_cfm.sh c -t storage/CreateS3FileSystem.yaml -n ansible-s3-fs

    **NOTE:**   
      - This will take some time by standard AWS S3Files implementation. 
      - Please ensure this stack completes successfully before proceeding for instance creation. 

5. CreateIAMInstProfile.yaml
        
         ./run_aws_cfm.sh ccap -t iam/CreateIAMInstProfile.yaml -n ansible-iam-inst-prof --cap CAPABILITY_NAMED_IAM  

6. CreateEC2Inst_EBSVol_KeyPair.yaml  

         ./run_aws_cfm.sh c -t instances/CreateEC2Inst_EBSVol_KeyPair.yaml -n ansible-master-01  

         ./run_aws_cfm.sh c -t instances/CreateEC2Inst_EBSVol_KeyPair.yaml -n ansible-worker-01 

         ./run_aws_cfm.sh c -t instances/CreateEC2Inst_EBSVol_KeyPair.yaml -n ansible-worker-02 

         ./run_aws_cfm.sh c -t instances/CreateEC2Inst_EBSVol_KeyPair.yaml -n ansible-worker-03 


