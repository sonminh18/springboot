{{/*
Command
*/}}
{{- define "spring-boot.commands" -}}
{{ default "[]" }}
{{- end }}

{{/*
Args
*/}}
{{- define "spring-boot.args" -}}
{{ default "[]" }}
{{- end }}

{{- define "spring-boot.secretName" -}}
{{ default (printf "%s-secret" .Release.Name) }}
{{- end }}

{{/*
Env
*/}}
{{- define "spring-boot.env" -}}
{{- end }}

{{/*
Ports
*/}}
{{- define "spring-boot.ports" -}}
{{- range $val := .Values.ports -}}
- name: {{ printf "%v" $val.name }}
  containerPort: {{ printf "%v" $val.port }}
  protocol: {{ printf "%v" $val.protocol }}
{{- end }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "spring-boot.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (printf "%s-svc-account" .Release.Name) }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
