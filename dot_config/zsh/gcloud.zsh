# Configuration for gcloud
# Require:
# - gcloud
#
# Install:
# - https://docs.cloud.google.com/sdk/docs/install-sdk

if command -v gcloud > /dev/null 2>&1; then
	source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
	source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
fi

