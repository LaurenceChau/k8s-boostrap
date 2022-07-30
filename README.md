# k8s-playground-boostrap

## Steps

1. install ingress controller

    ```markdown
    k apply -f nginx-controller-deploy.yaml
    ```

2. install cert-manager

    ```markdown
    k apply -f cert-manager.yaml
    ```

3. create ClusterIssuer

    ```markdown
    k apply -f cluster-issuer.yaml
    ```

4. install vault

    ```markdown
    helm install 

4. install argocd

    ```markdown
    k create ns argocd 
    k create -f argocd-install.yaml -n argocd
    ```

5. create ingress for argocd

    ```markdown
    k create -f argocd-server-ingress.yaml
    ```

6. install metric server(optional)

    ```markdown
    kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
    ```

    <https://github.com/kubernetes-sigs/metrics-server#installation>

7. install vault

    ```markdown
    helm repo add hashicorp https://helm.releases.hashicorp.com
    helm search repo hashicorp/vault -l
    helm install vault hashicorp/vault
    ```

    <https://www.vaultproject.io/docs/platform/k8s/helm>

8. init vault:

    ```markdown
    k exec -it vault-0 -- vault operator init
    k exec -it vault-0 -- vault operator unseal <key1>
    k exec -it vault-0 -- vault operator unseal <key2>
    k exec -it vault-0 -- vault operator unseal <key3>
    k exec -it vault-0 -- vault operator unseal <key4>
    k exec -it vault-0 -- vault operator unseal <key5>
    k get po 
    ```

## Plan

- setup vault
- vault auto-unseal
- setup grafana
- setup dashboard
- setup rook
- setup ELK
- setup Istio
- setup cilium
- setup yugabyte db
- setup velero
- enhance security practice
- setup minio
