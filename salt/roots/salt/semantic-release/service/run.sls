# -*- coding: utf-8 -*-
# vim: ft=sls

run-semantic-release:
  cmd.run:
    - name: podman run -it --rm -e GIT_AUTHOR_EMAIL="{{ pillar['semantic-release']['bot']['email'] }}" -e GIT_AUTHOR_NAME="{{ pillar['semantic-release']['bot']['name'] }}" -e GIT_COMMITTER_EMAIL="{{ pillar['semantic-release']['bot']['email'] }}" -e GIT_COMMITTER_NAME="{{ pillar['semantic-release']['bot']['name'] }}" -e GITHUB_TOKEN="{{ pillar['semantic-release']['bot']['token'] }}" -e REPO="{{ pillar['semantic-release']['repo'] }}" extra2000/semantic-release
    - cwd: /opt/semantic-release
    - runas: {{ pillar['semantic-release']['user'] }}
