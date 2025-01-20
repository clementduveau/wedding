# Wedding Website Docker Container

A lightweight Nginx Docker container for hosting the wedding website static content.

## Building and Running

Build the image:
```bash
docker build -t wedding-website .
```

Run the container:
```bash
docker run -d -p 8080:80 --name wedding-site wedding-website
```

The website will be available at `http://localhost:8080`

## Running Behind a Reverse Proxy

To run behind a reverse proxy:

```bash
# Create a network (if not exists)
docker network create web

# Run the container on the network
docker run -d --network web --name wedding-site wedding-website
```

## Container Management

- Stop: `docker stop wedding-site`
- Start: `docker start wedding-site`
- Remove: `docker rm wedding-site`
- Logs: `docker logs wedding-site`
