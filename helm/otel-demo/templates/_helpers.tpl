{{/*
Expand the name of the chart.
*/}}
{{- define "otel-demo.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels applied to all resources.
*/}}
{{- define "otel-demo.labels" -}}
app.kubernetes.io/part-of: opentelemetry-demo
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{/*
Selector labels for a given component name.
Usage: {{ include "otel-demo.selectorLabels" (dict "component" "frontend" "context" .) }}
*/}}
{{- define "otel-demo.selectorLabels" -}}
opentelemetry.io/name: {{ .component }}
{{- end }}

