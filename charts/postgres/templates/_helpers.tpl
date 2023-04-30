{{- define "postgresFullName" -}}
postgres-{{ required "postgresName must be specified" .Values.postgresName }}
{{- end -}}

{{- define "postgresDesc" -}}
{{ required "postgresDescription must be specified" .Values.postgresDescription }}
{{- end -}}
