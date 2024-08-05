Virtual Plan
1. Virtual Machine Setup
   ├── OS Installation (Linux, e.g., Ubuntu 20.04 LTS)
   └── System Update
       ├── sudo apt update
       └── sudo apt upgrade -y

2. Java Installation
   ├── Install OpenJDK 11
   └── Verify Installation
       ├── sudo apt install openjdk-11-jdk -y
       └── java -version

3. Hadoop Installation
   ├── Download and Extract Hadoop
   └── Set Environment Variables
       ├── export HADOOP_HOME=/usr/local/hadoop
       ├── export PATH=$PATH:$HADOOP_HOME/bin
       └── export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

4. Spark Installation
   ├── Download and Extract Spark
   └── Set Environment Variables
       ├── export SPARK_HOME=/usr/local/spark
       └── export PATH=$PATH:$SPARK_HOME/bin

5. Iceberg JAR Files
   ├── Download Iceberg JAR Files
   └── Copy JAR Files to Hadoop Directory
       ├── wget https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.2_2.12/0.13.2/iceberg-spark-runtime-3.2_2.12-0.13.2.jar
       └── sudo cp iceberg-spark-runtime-3.2_2.12-0.13.2.jar /usr/local/hadoop/lib/

6. Catalog Configuration
   ├── Choose Catalog Type (Hadoop, Hive, REST, JDBC, DynamoDB)
   └── Configure Catalog Settings

7. Spark Session Configuration
   ├── Set Up Spark Session with Iceberg Configuration
       └── Example Configuration (Python Script)

8. Run Example Script
   ├── Create Iceberg Example Script using Spark
   └── Run the Script
       └── spark-submit --packages org.apache.iceberg:iceberg-spark-runtime-3.2_2.12:0.13.2 iceberg_example.py
