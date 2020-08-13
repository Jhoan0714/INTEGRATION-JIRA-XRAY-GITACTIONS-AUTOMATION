COMMIT="https://api.github.com/repos/Jhoan0714/INTEGRATION-JIRA-XRAY-GITACTIONS-AUTOMATION/commits{/sha}"
SHA="/estemisha"
COMMIT_URL=$(echo "${COMMIT/{\/sha\}/$SHA}")
echo $COMMIT_URL