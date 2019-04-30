### If you need update large amount of tags for bounch of resources. 

1.Edit vim ~/.aws/credentials

2.aws ec2 create-tags --resources "instance-id" --cli-input-json file://xxx.json --profile <>

3.aws rds add-tags-to-resource  --cli-input-json file://xxx.json --profile <>

4.How to `generate-cli-skeleton`

aws ec2 create-tags --resources "instance-id"  --resources --generate-cli-skeleton input  --profile <> 
