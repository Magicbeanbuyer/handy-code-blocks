ApacheKafka CLI Commands

1. start zookeeper cluster 

`bin/zookeeper-server-start.sh config/zookeeper.properties`

2. start kafka cluster 

`bin/kafka-server-start.sh config/server.properties`

3. create a topic

`bin/kafka-topics.sh --zookeeper localhost:2181 --topic firstTopic --create --partitions 3 --replication-factor 2`

4. create/launch a producer

`bin/kafka-console-producer.sh --broker-list localhost:9092 --topic firstTopic`

5. create/launch a consumer group

`bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --group  firstConsumerGroup`

5.1 list consumer groups

`bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list`

5.2 reset offsets

`bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --group  firstConsumerGroup --topic firstTopic --reset-offsets --shift-by 2 --execute`
