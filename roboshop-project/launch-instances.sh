#!/bin/bash


aws ec2 run-instances  --launch-template LaunchTemplateId=lt-0a3a41bad5ffd4580 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=frontend}]"

