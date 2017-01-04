# metricbeat
customized metricbeat docker image

## usage

```
docker run -d --name metricbeat \
  --net=host \
  --volume=/proc:/hostfs/proc:ro \
  --volume=/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro \
  --volume=/:/hostfs:ro \
  rplan/metricbeat:latest -system.hostfs=/hostfs
```

