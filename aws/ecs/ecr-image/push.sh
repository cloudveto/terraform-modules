#!/usr/bin/bash
set -e

source_path="$1"
repository_url="$2"
tag="$3"
account_id="$4"
role_name="$5"
region="$6"
echo "-------------------- Started $ecs_service_name --------------------"
image_name="$(echo "$repository_url" | cut -d/ -f2)"
(cd "$source_path" && docker build -t "$image_name" .)
export IAM_INSTANCE_PROFILE="$role_name"
aws ecr get-login --no-include-email --region "$region" | bash
docker tag "$image_name" "$repository_url":"$tag"
docker push "$repository_url":"$tag"
echo "-------------------- Completed $ecs_service_name --------------------"