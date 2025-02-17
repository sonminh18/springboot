# spring-boot

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| args | list | `[]` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| command | list | `[]` |  |
| extraArgs | list | `[]` |  |
| extraEnv | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| healthCheck.enabled | bool | `false` |  |
| healthCheck.livenessProbe.failureThreshold | int | `3` |  |
| healthCheck.livenessProbe.initialDelaySeconds | int | `5` |  |
| healthCheck.livenessProbe.periodSeconds | int | `15` |  |
| healthCheck.livenessProbe.successThreshold | int | `1` |  |
| healthCheck.livenessProbe.tcpSocket.port | int | `8080` |  |
| healthCheck.livenessProbe.timeoutSeconds | int | `2` |  |
| healthCheck.readinessProbe.failureThreshold | int | `3` |  |
| healthCheck.readinessProbe.initialDelaySeconds | int | `5` |  |
| healthCheck.readinessProbe.periodSeconds | int | `15` |  |
| healthCheck.readinessProbe.successThreshold | int | `1` |  |
| healthCheck.readinessProbe.tcpSocket.port | int | `8080` |  |
| healthCheck.readinessProbe.timeoutSeconds | int | `2` |  |
| image.name | string | `"production/logs-uploader"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.registry | string | `"registry.trueid.ai"` |  |
| image.version | string | `"latest"` |  |
| imagePullSecrets[0].name | string | `"vngcloud.registry"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.enabled | bool | `false` |  |
| podAnnotations."sidecar.istio.io/inject" | string | `"false"` |  |
| podSecurityContext.fsGroup | int | `2000` |  |
| ports | list | `[]` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| securityContext.privileged | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| uploaderConfigs.logPath | string | `""` |  |
| uploaderConfigs.modeInit | string | `"default"` |  |
| uploaderConfigs.s3.accessKey | string | `""` |  |
| uploaderConfigs.s3.bucketName | string | `""` |  |
| uploaderConfigs.s3.bucketPrefix | string | `""` |  |
| uploaderConfigs.s3.region | string | `""` |  |
| uploaderConfigs.s3.secretKey | string | `""` |  |
| volumeMounts[0].mountPath | string | `"/app/logs"` |  |
| volumeMounts[0].name | string | `"log"` |  |
| volumeMounts[0].subPath | string | `"bi-uploader-logs"` |  |
| volumeMounts[1].mountPath | string | `"/logs"` |  |
| volumeMounts[1].name | string | `"log"` |  |
| volumeMounts[1].subPath | string | `"ekyc-trueidapi"` |  |
| volumes[0].hostPath.path | string | `"/data/prod-trueid-logs"` |  |
| volumes[0].hostPath.type | string | `""` |  |
| volumes[0].name | string | `"log"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
