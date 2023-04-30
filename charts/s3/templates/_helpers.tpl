{{- define "s3FullName" -}}
s3-{{ required "s3Name must be specified" .Values.s3Name }}
{{- end -}}

{{- define "s3Desc" -}}
{{ required "s3Description must be specified" .Values.s3Description }}
{{- end -}}

{{- define "s3CredsName" -}}
{{ include "s3FullName" . }}-creds
{{- end -}}

{{- define "s3CredsSecretName" -}}
{{ include "s3CredsName" . }}-secret
{{- end -}}
