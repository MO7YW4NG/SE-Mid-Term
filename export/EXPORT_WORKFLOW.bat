docker exec -u node -it n8n n8n export:workflow --all --output=workflows.json
docker cp n8n:/home/node/workflows.json ../shared/workflows.json
pause