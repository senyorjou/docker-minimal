# Minimal dockerfile

Docker image with a simple static binary. No tools, no shell, no nothing
Using multi-stage build to create a minimal image using special _scratch_ `FROM`, just few MB

## Build and run

```bash
docker build -t min-docker --network host .
docker run --rm --network host min-docker
```

--
M

