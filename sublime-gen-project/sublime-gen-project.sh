function genSublime {
  SPLIT_CUR_DIR=$(echo $PWD | tr "/" "\n")
  LENGTH=${#SPLIT_CUR_DIR[@]}
  FOLDERNAME=${SPLIT_CUR_DIR[ $LENGTH - 1 ]}

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
