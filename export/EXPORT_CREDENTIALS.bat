docker exec -u node -it n8n n8n export:credentials --all --output=credentials.json
docker cp n8n:/home/node/credentials.json ../shared/credentials.json
pause