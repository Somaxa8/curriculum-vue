#!/usr/bin/env bash

rm -rf dist
npm run build
ssh root@somacode.app rm -rf /root/nginx/html/curriculum/*
scp -r dist/* root@somacode.app:/root/nginx/html/curriculum