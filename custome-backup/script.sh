#!/bin/bash

ANNOTATIONS=$(kubectl get --kubeconfig /.kube/config $RESOURCE $NAME -n $NAMESPACE -o jsonpath='{.metadata.annotations}')
BACKUP_ANNOTATION=$(echo $ANNOTATIONS | jq -r '.backup')

if [ "$BACKUP_ANNOTATION" == "true" ]; then
    echo "Backup annotation is set to true. Proceeding with backup..."
    mc cp $PATH_BACKUP myminio/backup/config.$date
else
    echo "Backup annotation is not set to true. Skipping backup."
fi
