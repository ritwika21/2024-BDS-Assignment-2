# 2024-BDS-Assignment-2

Documentation for hadoop [reference](https://hadoop.apache.org/docs/stable/hadoop-project-dist/hadoop-common/SingleCluster.html)

Documentation for HIVE [reference](https://phoenixnap.com/kb/install-hive-on-ubuntu)

## Submission document
link: [submission document](https://wilpbitspilaniacin0-my.sharepoint.com/:w:/g/personal/2022dc04304_wilp_bits-pilani_ac_in/Ef8aJrUkVpxKnIhSKV5M3tcBsPqjTN3J16wDPg4fMelu5w?e=WO7ls6)

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

```sql
SELECT COUNT(DISTINCT(customer_id)) AS unique_customers FROM online_retail_data WHERE country='United Kingdom';
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

