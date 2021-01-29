#!/bin/bash

name_secret="serviceaccount-bigquery-storag"

mkdir -p ./creds 

#  Add secret "SERVICEACCOUNT_bigquery" to /security/secret-manager
#  Enable "Secret Manager" in cloud-build/settings
<<<<<<< HEAD
gcloud secrets versions access latest --secret=$name_secret --format='get(payload.data)' | tr '_-' '/+' | base64 -d > ./environments/serviceaccount.json

gcloud auth activate-service-account --key-file ./environments/serviceaccount.json

ls

ls ./creds 
=======
gcloud secrets versions access latest --secret=$name_secret --format='get(payload.data)' | tr '_-' '/+' | base64 -d > ./creds/serviceaccount.json

gcloud auth activate-service-account --key-file ./creds/serviceaccount.json
>>>>>>> 333119e10141fda612d318bb7c9832d6de190c2a
