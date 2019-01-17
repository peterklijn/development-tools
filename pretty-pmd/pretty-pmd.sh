pmd() {
		mvn pmd:pmd
		cat target/pmd.xml | xq .pmd | jq 'if (.file | length) != 0 then .file[] else "All is good" end'
}