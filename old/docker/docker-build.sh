#!/bin/sh



docker build -t proxy-test ~/new_infra/infrastructure/docker/nginx/
docker tag proxy-test stormmind/proxy-test
docker push stormmind/proxy-test

docker build -t frontend-test ~/new_frontend/frontend/stormmind/
docker tag frontend-test stormmind/frontend-test
docker push stormmind/frontend-test

docker build -t backend-test ~/new_backend/backend/;
docker tag backend-test stormmind/backend-test;
docker push stormmind/backend-test