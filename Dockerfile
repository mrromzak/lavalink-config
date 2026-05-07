FROM ghcr.io/lavalink-devs/lavalink:4

# Copy konfigurasi yang sudah dioptimasi
COPY application.yml /opt/Lavalink/application.yml

# JVM flags untuk hemat RAM — aman untuk user besar
ENV JAVA_OPTS="-Xmx256m -Xms128m -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:+UseStringDeduplication -XX:+ExitOnOutOfMemoryError"
