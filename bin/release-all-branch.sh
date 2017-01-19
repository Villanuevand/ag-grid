#!/usr/bin/env bash

if [ "$#" -ne 2 ]
  then
    echo "You must supply the version as first parameter and the allowed peer versions as second parameter"
    exit 1
fi


release-just-branch $1 $2 "ag-grid" "ag-grid-enterprise" "ag-grid-ng2" "ag-grid-ng2-example" "ag-grid-react" "ag-grid-react-example" "ag-grid-aurelia" "ag-grid-aurelia-example"
release-prepare-examples.sh $1 $2
release-all-merge-locally.sh $1

