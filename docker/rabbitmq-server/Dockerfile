FROM rabbitmq:3-management
RUN rabbitmq-plugins enable --offline rabbitmq_management
ADD definitions.json /etc/rabbitmq/
ADD rabbitmq.conf /etc/rabbitmq/rabbitmq.conf 
RUN chown -R rabbitmq:rabbitmq /etc/rabbitmq
EXPOSE 5671
EXPOSE 15671
CMD ["rabbitmq-server"]
