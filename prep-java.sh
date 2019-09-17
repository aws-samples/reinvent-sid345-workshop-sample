#!/bin/bash

# Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with
# the License. A copy of the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions
# and limitations under the License.

echo "******************************"
echo "* Installing Java 8 Open JDK *"
echo "******************************"
sudo yum install -y java-1.8.0-openjdk-devel git

clear
echo ""
sudo /usr/sbin/alternatives  --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java

echo ""
sudo /usr/sbin/alternatives  --set javac /usr/lib/jvm/java-1.8.0-openjdk.x86_64/bin/javac

sudo wget http://busy-engineers-guide.reinvent-workshop.com/software/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/7/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version
