#!/bin/bash
oc new-project workshop
oc project workshop

oc delete all -l app=guide
oc new-app quay.io/osevg/workshopper --name=guide \
      -e WORKSHOPS_URLS="https://raw.githubusercontent.com/1redhat/crw-workshop/master/_crw_workshop.yml" \
      -e JAVA_APP=false 
oc expose svc/guide

oc status