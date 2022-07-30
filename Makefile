apply: aws-lb
	

nginx: 
	kubectl apply -f nginx-controller-deploy.yaml

vault:
	helm install vault hashicorp/vault

aws-lb:
	helm repo add eks https://aws.github.io/eks-charts
	helm repo update

rollback:
	kubectl delete -f nginx-controller-deploy.yaml