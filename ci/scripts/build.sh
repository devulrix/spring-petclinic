#!/usr/bin/env sh
set -ue

cd source-code
./mvnw package 
cp target/*.jar ../target