# Cluster
aws eks --region us-east-1 update-kubeconfig --name eks-knative

# Serving
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.16.0/serving-crds.yaml
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.16.0/serving-core.yaml

# Service Mesh
kubectl apply --filename https://github.com/knative/net-kourier/releases/download/v0.16.0/kourier.yaml
kubectl patch configmap/config-network \
  --namespace knative-serving \
  --type merge \
  --patch '{"data":{"ingress.class":"kourier.ingress.networking.knative.dev"}}'

# Eventing
kubectl apply --filename https://github.com/knative/eventing/releases/download/v0.16.0/eventing-crds.yaml
kubectl apply --filename https://github.com/knative/eventing/releases/download/v0.16.0/eventing-core.yaml
kubectl apply --filename https://github.com/knative/eventing/releases/download/v0.16.0/in-memory-channel.yaml
kubectl apply --filename https://github.com/knative/eventing/releases/download/v0.16.0/mt-channel-broker.yaml

# Monitoring
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.16.0/monitoring-core.yaml
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.16.0/monitoring-metrics-prometheus.yaml
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.16.0/monitoring-tracing-jaeger-in-mem.yaml

