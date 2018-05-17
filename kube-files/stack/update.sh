kubectl apply -f namespace.yaml
kubectl apply -f rbac.yaml
kubectl apply -f configmap-prometheus-config.yaml 
kubectl apply -f configmap-grafana-provision.yaml
kubectl apply -f prometheus.yaml
kubectl apply -f grafana.yaml