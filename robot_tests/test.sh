COMMIT="https://api.github.com/repos/Jhoan0714/INTEGRATION-JIRA-XRAY-GITACTIONS-AUTOMATION/commits{/sha}"
SHA="/eda378ab8d4132b4fc6a34d65b9f75dfce18f34f"
COMMIT_URL=$(echo "${COMMIT/{\/sha\}/$SHA}")
COMMIT_CONTEXT=$(curl $COMMIT_URL)
echo $COMMIT_JSON