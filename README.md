# semantic-release-box

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build Status](https://travis-ci.com/extra2000/semantic-release-box.svg?branch=master)](https://travis-ci.com/extra2000/semantic-release-box) [![Build status](https://ci.appveyor.com/api/projects/status/8j06v6d51viqm078/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/semantic-release-box/branch/master) |

Developer box for semantic-release bot.


## Getting started

Clone this repository:
```
$ git clone --recursive https://github.com/extra2000/semantic-release-box.git
$ cd semantic-release-box
```


## Preparing environment

Create Vagrant box and install podman:
```
$ vagrant up --provider=libvirt
$ vagrant ssh semantic-release-box -- sudo salt-call state.sls podman
```


## Example usage

Create a [new personal access token](https://github.com/settings/tokens/new) for `semantic-release` access. Make sure to enable the following [scopes](https://github.com/semantic-release/github#github-authentication).

Create `salt/roots/pillar/semantic-release.sls` file, you may need to change the values:
```
semantic-release:
  user: vagrant
  bot:
    name: Maximillian Papandrious
    email: max@example.com
    token: 1048482827348451eb245144fac345d2e1514436
  repo: max/hello-world.git
  branch: master
  nodejs:
    version: 12.18.4
    nvm:
      version: 0.36.0
```

Finally, execute:
```
$ vagrant ssh semantic-release-box -- sudo salt-call state.sls semantic-release
```
