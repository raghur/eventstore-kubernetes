#!/bin/bash
count=$1
mkdir -p .tmp
for ((c=1; c<=$count; c++ ))
    do
        cat ../templates/es_deployment_template.yaml | sed -e "s/\${nodenumber}/$c/" | sed -e "s/\${nodecount}/$count/" > .tmp/es_deployment_$c.yaml
    done
