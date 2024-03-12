 #!/bin/bash

 oc patch -n gpu-operator clusterpolicy  cluster-policy --type merge --patch '{"spec": {"dcgmExporter": {"serviceMonitor":{ "additionalLabels":{},"enabled":true,"honorLabels":false,"interval":"15s"}}}}'
 oc apply -f ./grafana-ai-workload-stats.yaml
 oc apply -f ./grafana-pod-nvidia-gpu-stats.yaml
