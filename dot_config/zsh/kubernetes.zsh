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

	# Use the gcloud plugin for GKE
	# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
	# Install:
	# - gcloud components install gke-gcloud-auth-plugin
	export USE_GKE_GCLOUD_AUTH_PLUGIN=True

	# shortcuts to create pods in Kubernetes cluster
	alias debug-kubernetes="kubectl run -it --rm --restart=Never busybox --image=praqma/network-multitool /bin/ash"
	alias debug-kubernetes-gcloud="kubectl run -it --rm --restart=Never busybox --image=google/cloud-sdk /bin/bash"
fi

