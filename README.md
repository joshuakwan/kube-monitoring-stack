# kube-monitoring-stack

Setting up a multi-tenancy monitoring stack on kube.

## Deployment

Create namespace for the stack:
```
kubectl create namespace monitoring
```

Create the RBAC stuff:
```
kubectl create -f rbac.yaml
```

Create config maps for projected volume use:
```
kubectl create -f configmap-prometheus-config.yaml -n monitoring
kubectl create -f configmap-grafana-provision.yaml -n monitoring
```

Deploy prometheus
```
kubectl create -f prometheus.yaml -n monitoring
```

kubectl port-forward svc/prometheus-service 9090:9090 -n monitoring

Deploy grafana
```
kubectl create -f grafana.yml -n monitoring
```

## Tools

Deploy weavescope
```
kubectl apply -f "https://cloud.weave.works/k8s/scope.yaml?k8s-version=$(kubectl version | base64 | tr -d '\n')"
```

Visit locally
```
kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040
```