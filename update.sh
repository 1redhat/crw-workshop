#!/bin/bash
oc delete all -l app=guide
#oc new-app --name=guide osevg/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/RedHatWorkshops/openshiftv4-workshop/ocp4.2" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/RedHatWorkshops/openshiftv4-workshop/ocp4.2/_module_groups.yml"
oc new-app --name=guide osevg/workshopper CONTENT_URL_PREFIX="https://raw.githubusercontent.com/1redhat/crw-workshop/master" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/1redhat/crw-workshop/master/_groups_modules.yml"
oc expose svc/guide
