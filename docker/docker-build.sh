#!/bin/sh



docker build -t proxy_test ../../../new_infra/infrastructure/docker/nginx/Dockerfile
docker tag proxy_test stormmind/proxy_test
docker push stormmind/proxy_test

docker build -t frontend_test ../../../new_frontend/frontend/Dockerfile
docker tag frontend_test stormmind/frontend_test
docker push stormmind/frontend_test

docker build -t backend_test ../../../new_backend/backend/Dockerfile
docker tag backend_test stormmind/backend_test
docker push stormmind/backend_test