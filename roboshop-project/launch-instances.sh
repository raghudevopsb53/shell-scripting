#!/bin/bash


case $1 in
  launch)
    for component in frontend catalogue cart user shipping payment mysql mongo rabbitmq redis; do
      aws ec2 run-instances  --launch-template LaunchTemplateId=lt-0a3a41bad5ffd4580 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${component}]"
    done
  ;;
  routes)
    echo Updating routes
  ;;
esac
done

