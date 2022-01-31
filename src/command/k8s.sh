#!/bin/sh

source '/busyboxk8s/src/load-deps.sh'

set_country_mx() {
  export COUNTRY_DEFAULT=${COUNTRY_MX}
}

set_country_co() {
  export COUNTRY_DEFAULT=${COUNTRY_CO}
}

set_country_pe() {
  export COUNTRY_DEFAULT=${COUNTRY_PE}
}

set_country_cl() {
  export COUNTRY_DEFAULT=${COUNTRY_CL}
}

set_country_ar() {
  export COUNTRY_DEFAULT=${COUNTRY_CL}
}

attach_sh_shell() {
  kubectl exec \
    -n ${NAMESPACE_DEFAULT} \
    --stdin \
    --tty \
    ${1} \
    -- /bin/sh
}

attach_bash_shell() {
  kubectl exec \
    -n ${NAMESPACE_DEFAULT} \
    --stdin \
    --tty \
    ${1} \
    -- /bin/bash
}

alias k8s-cluster3-staging="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio3-staging"
alias k8s-cluster4-staging="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio4-staging"
alias k8s-cluster3-live="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio3-live"
alias k8s-cluster4-live="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio4-live"

alias k8s-switch-mx="set_country_mx"
alias k8s-switch-co="set_country_co"
alias k8s-switch-pe="set_country_pe"
alias k8s-switch-cl="set_country_cl"
alias k8s-switch-ar="set_country_ar"

alias k8s-hpa="kubectl get hpa -n ${NAMESPACE_DEFAULT}"
alias k8s-pods-all="kubectl get pods --kubeconfig ~/.kube/config -A"
alias k8s-pods="kubectl get pods --kubeconfig ~/.kube/config -n ${NAMESPACE_DEFAULT}"
alias k8s-pods-create="kubectl create pods --kubeconfig ~/.kube/config -n ${NAMESPACE_DEFAULT}"
alias k8s-pods-delete="kubectl delete pods --kubeconfig ~/.kube/config -n ${NAMESPACE_DEFAULT}"
alias k8s-check-cron-force-sync="kubectl get pods --kubeconfig ~/.kube/config -n ${NAMESPACE_DEFAULT} | grep 'cron-force-sync'"
alias k8s-check-worker-image="kubectl get pods --kubeconfig ~/.kube/config -n ${NAMESPACE_DEFAULT} | grep 'worker-update-image'"
alias k8s-create-cron-force-sync="kubectl create job --from=cronjob/${NAMESPACE_DEFAULT}-cron-force-sync-image -n ${NAMESPACE_DEFAULT} ${NAMESPACE_DEFAULT}-cron-force-sync-image-`date | sha1sum | tr -d ' -' | tr -d '\n' | cut -b1-10`"
alias k8s-pod-shell-bash="attach_bash_shell"
alias k8s-pod-shell-sh="attach_sh_shell"
