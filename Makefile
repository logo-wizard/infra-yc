INFRA_CTX := yc-kube-infra
PROD_CTX := yc-kube-prod
CURRENT_CTX := "$(shell kubectl config current-context)"


_RED := \x1B[0;31m
_GREEN := \x1B[0;32m
_BYELLOW := \x1B[1;33m
_NC := \x1B[0m


.PHONY: argocd-pass
argocd-pass:
	@echo "$(_GREEN)$(shell kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d)$(_NC)"
