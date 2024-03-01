FROM ubuntu
RUN apt-get update && apt-get install -y curl gettext
WORKDIR /usr/local/bin
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
WORKDIR /home/argocd/cmp-server/conCfig/
#COPY plugin.yaml ./ # let's use a ConfigMap instead