############################
##ApacheKafka CLI Commands##
############################


#### Broker

# start zookeeper cluster 
bin/zookeeper-server-start.sh config/zookeeper.properties

# start kafka cluster 
bin/kafka-server-start.sh config/server.properties

#### Topic

# create a topic
bin/kafka-topics.sh --zookeeper localhost:2181 --topic firstTopic --create --partitions 3 --replication-factor 1

# describe topics
bin/kafka-topics.sh --zookeeper localhost:2181 --describe

#### Producer

# create/launch a producer
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic firstTopic

#### Consumer

# create a consumer
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic firstTopic --from-beginning

# create/launch a consumer group
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --group  firstConsumerGroup

# list consumer groups
bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

# reset offsets
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --group  firstConsumerGroup --topic firstTopic --reset-offsets --shift-by 2 --execute
