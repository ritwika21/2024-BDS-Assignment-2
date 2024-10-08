docker run \
    --name bds \
    -h 'localhost' \
    --rm -it \
    -p 8042:8042 \
    -p 8088:8088 \
    -p 9870:9870 \
    -v ./data:/data \
    -v ./docker/configs/hadoop/core-site.xml:/hadoop/etc/hadoop/core-site.xml \
    -v ./docker/configs/hadoop/hdfs-site.xml:/hadoop/etc/hadoop/hdfs-site.xml \
    -v ./docker/configs/hadoop/mapred-site.xml:/hadoop/etc/hadoop/mapred-site.xml \
    -v ./docker/configs/hadoop/yarn-site.xml:/hadoop/etc/hadoop/yarn-site.xml \
    -v ./docker/configs/hive/hive-site.xml:/hadoop/apache-hive-4.0.0-bin/conf/hive-site.xml \
    -v ./docker/test.sh:/test.sh \
    -v ./docker/entrypoint.sh:/entrypoint.sh \
    -v ./docker/start-services.sh:/start-services.sh \
    -v ./docker/hive.sh:/hive.sh \
    -v ./docker/load-data.sh:/load-data.sh \
    -v ./sql/load-csv.sql:/sql/load-csv.sql \
    -v ./mapreducer:/mapreducer \
    hadoop \
    "$@"