create_server:
	aws cloudformation create-stack --stack-name udagram-server-stack --template-body file://servers.yaml --parameters file://servers-params.json --region=us-east-1 

create_network:
	aws cloudformation create-stack --stack-name udagram-network-stack --template-body file://network.yaml --parameters file://network-params.json --region=us-east-1

update_server:
	aws cloudformation update-stack --stack-name udagram-server-stack --template-body file://servers.yaml --parameters file://servers-params.json --region=us-east-1 

update_network:
	aws cloudformation update-stack --stack-name udagram-network-stack --template-body file://network.yaml --parameters file://network-params.json --region=us-east-1

delete_server:
	aws cloudformation delete-stack --stack-name udagram-server-stack --region=us-east-1

delete_network:
	aws cloudformation delete-stack --stack-name udagram-network-stack --region=us-east-1