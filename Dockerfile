FROM docker.io/ansible/ansible-runner as plugins

COPY ./playbook.yml /runner/project/playbook.yml

# dowload connect plugins
RUN ansible-runner -p /runner/project/playbook.yml run /runner

FROM strimzi/kafka:latest-kafka-2.5.0

COPY --from=plugins /tmp/ckc-connectors/plugins/ /opt/kafka/plugins/
USER 1001