kubectl create -f namespace.yaml
kubectl create -f rbac.yaml
kubectl create -f configmap-prometheus-config.yaml 
kubectl create -f configmap-grafana-provision.yaml
kubectl create -f prometheus.yaml
kubectl create -f grafana.yaml