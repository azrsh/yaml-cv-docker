# yaml-cv-docker

Upstream: https://github.com/kaityo256/yaml_cv

How to run:
```bash
$ docker run --rm \
  --volume "$(pwd):/data" \
  --volume "$(pwd)/fonts:/usr/app/fonts" \
  ghcr.io/azrsh/yaml-cv:latest \
  -i /data/input/data.yaml -o  /data/output/output.pdf -s /data/styles/style.txt
```
