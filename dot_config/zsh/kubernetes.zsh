# Configuration for Kubernetes
#
# Require:
# - kubectl
# - kubecolor
#
# Install:
# - brew install kubectl
# - brew install kubecolor

if command -v kubectl > /dev/null 2>&1; then
	# zsh autocomplete
	source <(kubectl completion zsh)

	if command -v kubecolor > /dev/null 2>&1; then
		# ignore kubecolor for command autocomplete
		zstyle ':completion:*:commands' ignored-patterns 'kubecolor'
		compdef kubecolor=kubectl

		# replace kubectl, with kubecolor
		alias kubectl="kubecolor"
	fi
fi

# shortcuts to create pods in Kubernetes cluster
alias debug-kubernetes="kubectl run -it --rm --restart=Never busybox --image=praqma/network-multitool /bin/ash"
alias debug-kubernetes-gcloud="kubectl run -it --rm --restart=Never busybox --image=google/cloud-sdk /bin/bash"

