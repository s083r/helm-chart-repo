{{- define "{{ .Chart.Name }}.serviceType" }}
{{- with .Values.service }}
{{- if .type }}
{{- if  or (eq .type "NodePort") (eq .type "LoadBalancer") }}
nodePort: {{ .nodePort }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}