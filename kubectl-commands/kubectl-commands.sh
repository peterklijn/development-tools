function kubename {
	if [[ -n "$1" ]]; then
		kubectl config set-context --current --namespace="$1"
	else
		kubectl config get-contexts
	fi
}

function kubecon {
	if [[ -n "$1" ]]; then
		kubectl config use-context $1
	else
		kubectl config get-contexts
	fi
}