# custome-backup
     This Service Give You namespace resource and name with specific path to backup and push to minio server before that sure config configuration be right and accessable 
```
sudo docker run -it -v /home/user:/home --entrypoint bash  custome-backup:0.0.2 -c "mc alias set myminio http://192.168.4.215:9000 ROOTUSER CHANGEME123 && mc cp --recursive /home/elasticsearch_data/ myminio/backup"
```
