# Camel Kafka Connector with MongoDB

A simple demo to show how to use [Apache Camel Kafka Connector](https://camel.apache.org/camel-kafka-connector),
to serialize Kafka Messages on to MongoDB collection.

__WARNING__

* Demo is under development
* README update in progress

## Pre-requisites

- [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
- [MongoDB](https://github.com/kameshsampath/kube-dev-utils/tree/master/mongodb) 
- [Strimzi Kafka](https://strimzi.io/)
- [Kafkacat](https://github.com/edenhill/kafkacat)

## Setup 

### Start Minikube

```shell script
./start-minikube.sh 
```

### Deploy MongoDB

```shell script
git clone https://github.com/kameshsampath/kube-dev-utils
kubectl apply -k kube-dev-utils/mongodb/
```

### Deploy Kafka

Follow the [Strimzi Kafka](https://strimzi.io/) documentation to install Kafka locally, to make the demo work as is deploy Kafka to a namespace called *kafka*


## Deploy Demo

```shell script
kubectl apply -k $PROJECT_HOME/k8s/
```

## Testing 

Try sending JSON messages using kafkacat and the messages sent will be serialized on to MongoDB `greetings` collection of Demo Database.
