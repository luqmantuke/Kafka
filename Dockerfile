# Use the official Kafka UI image as base
FROM provectuslabs/kafka-ui:latest

# Expose the port that Kafka UI runs on
EXPOSE 8080

# Set environment variables for Railway deployment
# These will be overridden by Railway's environment variables
ENV KAFKA_CLUSTERS_0_NAME=railway-kafka
ENV KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=${KAFKA_URL:-kafka:9092}
ENV KAFKA_CLUSTERS_0_ZOOKEEPER=${ZOOKEEPER_URL:-zookeeper:2181}

# The base image already has the correct CMD, so we don't need to override it
# The provectuslabs/kafka-ui image handles the startup automatically
