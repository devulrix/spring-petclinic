#!/usr/bin/env sh
set -ue

cd source-code
 # Added -DskipTests and -Dcheckstyle.skip to speed up task for demo purpose
# They should not be included in a proper test pipeline
./mvnw package -DskipTests -Dcheckstyle.skip
cp target/*.jar ../target
cp deployment/docker/Dockerfile ../target