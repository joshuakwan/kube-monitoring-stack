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
kubectl create -f prometheus.yml -n monitoring
```

Deploy grafana
```
kubectl create -f grafana.yml -n monitoring
```