function genSublime {
  FOLDERNAME=$(echo $PWD | tr "/" "\n" | awk '/./{line=$0} END{print line}')

  if ls | grep -q .sublime-project; then
    echo 'There is already an sublime-project'
  else
    CONFIG="""{
      \"folders\": [{
        \"path\": \"${PWD}\",
        \"folder_exclude_patterns\": [\"target\",\"dist\", \"node_modules\", \".tmp\", \".sublime\"]
      }]
    }
    """
    echo $CONFIG > "${FOLDERNAME}.sublime-project"
  fi

  sub
}

alias gen-sublime=genSublime
