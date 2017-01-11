function gitpushup {
  PUSH_OUTPUT=$(git push 2>&1)
  GIT_PUSH_CMD=$(echo $PUSH_OUTPUT | grep "git push --set-upstream")

  if [ -n "${GIT_PUSH_CMD}" ]; then
    echo "Setting upstream.."
    eval ${GIT_PUSH_CMD}
  else
    echo "Upstream already set, pushing output below:"
    echo $PUSH_OUTPUT
  fi
}

alias gitPushUp=gitpushup
alias git-push-up=gitpushup
