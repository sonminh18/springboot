{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "spring-boot.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "spring-boot.labels" -}}
{{ include "spring-boot.selectorLabels" . }}
app.trueid.ai/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "spring-boot.selectorLabels" -}}
app.trueid.ai/name: {{ include "spring-boot.fullname" . }}
app.trueid.ai/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.trueid.ai/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}