# Use the official Kafka UI image as base
FROM provectuslabs/kafka-ui:latest

# Expose the port that Kafka UI runs on
EXPOSE 8080

# Set environment variables for Railway deployment
# These will be overridden by Railway's environment variables
ENV KAFKA_CLUSTERS_0_NAME=railway-kafka
ENV KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=localhost:9092
ENV KAFKA_CLUSTERS_0_ZOOKEEPER=localhost:2181

# The CMD is already set in the base image, but we can override if needed
CMD ["sh", "-c", "java -jar /app/kafka-ui-api.jar"]
