#!/bin/sh

# 若 shared 資料夾中存在 workflows 目錄，就將所有 JSON 檔案依序匯入
if [ -f /shared/workflows.json ]; then
echo "Importing workflow"
n8n import:workflow --input="/shared/workflows.json"
fi

# 同理，處理 credentials
if [ -f /shared/credentials.json ]; then
echo "Importing credentials"
n8n import:credentials --input="/shared/credentials.json"
fi

# 啟動 n8n
exec sh /docker-entrypoint.sh