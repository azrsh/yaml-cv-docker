# yaml-cv-docker

How to run:
```bash
$ docker run --rm \
  --volume "$(pwd):/data" \
  --volume "$(pwd)/fonts:/usr/app/fonts" \
  ghcr.io/azarashi2931/yaml-cv:latest \
  -i /data/input/data.yaml -o  /data/output/output.pdf -s /data/styles/style.txt
```
