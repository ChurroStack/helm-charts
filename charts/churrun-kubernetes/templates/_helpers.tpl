{{/*
Common template helpers
*/}}

{{- define "chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "chart.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}