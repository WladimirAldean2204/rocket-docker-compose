docker volume create rocket-api && \
docker run --rm -i -v rocket-api:/data busybox rm -rf /data/*/ && \
tar --exclude='.DS_Store' -C ./api -c -f- . | docker run --rm -i -v rocket-api:/data busybox tar -C ./data -xv -f-