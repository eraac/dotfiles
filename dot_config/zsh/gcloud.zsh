# Configuration for gcloud
# Require:
# - gcloud
#
# Install:
# - https://docs.cloud.google.com/sdk/docs/install-sdk

if command -v gcloud > /dev/null 2>&1; then
	source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
fi

# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
# probably not needed if all gke clusters are at least v1.26
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

