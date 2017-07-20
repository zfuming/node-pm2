FROM node:6

RUN npm install pm2 -g

VOLUME ["/app"]

# Expose ports
EXPOSE 80 443 3000

WORKDIR /app

COPY docker-pm2-run /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-pm2-run

# Start
CMD ["docker-pm2-run"]
