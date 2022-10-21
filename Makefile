apply: kube-router
	
nginx: 
	kubectl apply -f nginx-controller-deploy.yaml

vault:
	helm install vault hashicorp/vault

aws-lb:
	helm repo add eks https://aws.github.io/eks-charts
	helm repo update

kube-router:
	kubectl apply -k manifests/kube-router

kube-router-rollback:
	kubectl delete -k manifests/kube-router

rollback:
	kubectl delete -f nginx-controller-deploy.yaml