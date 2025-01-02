{{- define "k8s-java-dev.labels" -}}
currentDate: {{ now | date "2006-01-02" }}
version: {{ printf "%s-%s-%s" .Chart.Name .Chart.Version .Chart.AppVersion }}
{{- end }}
