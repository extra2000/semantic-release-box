# -*- coding: utf-8 -*-
# vim: ft=sls

semantic-release-dir-present:
  file.directory:
    - name: /opt/semantic-release

semantic-release-dockerfile-present:
  file.managed:
    - name: /opt/semantic-release/Dockerfile
    - source: salt://semantic-release/files/Dockerfile.jinja
    - template: jinja

build-semantic-release:
  cmd.run:
    - name: podman build -t extra2000/semantic-release .
    - cwd: /opt/semantic-release
    - runas: {{ pillar['semantic-release']['user'] }}
