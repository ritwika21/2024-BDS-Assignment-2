# 2024-BDS-Assignment-2

Documentation for hadoop [reference](https://hadoop.apache.org/docs/stable/hadoop-project-dist/hadoop-common/SingleCluster.html)

Documentation for HIVE [reference](https://phoenixnap.com/kb/install-hive-on-ubuntu)

## Build commands
Build Image
```bash
./docker/build.sh
```

## Usage commands 

1. Start container
```bash
./docker/run.sh /start-services.sh
```
**You can now leave this terminal window open and start a new terminal window for next operations**


2. Load data
```bash
./docker/exec.sh /load-data.sh
```

3. Use Hive shell to run queries
```bash
./docker/exec.sh /hive.sh
```

Some basic queries 
```sql
SELECT * FROM online_retail_data LIMIT 10;
```

```sql
SELECT SUM(quantity) AS total_quantity FROM online_retail_data;
```

4. Execute mapreduce code
Calculate unique-customers in a country (We have used "United Kingdom" for this query).
```bash
./docker/exec.sh /mapreducer/unique-customers/unique-customers.sh
```


4. For any debug task please use
```bash
./docker/exec.sh bash
```