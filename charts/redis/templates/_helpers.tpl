{{- define "redisFullName" -}}
redis-{{ required "redisName must be specified" .Values.redisName }}
{{- end -}}

{{- define "redisDesc" -}}
{{ required "redisDescription must be specified" .Values.redisDescription }}
{{- end -}}
