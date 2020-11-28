# semantic-release-box

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/9jcp4481olwk8nra/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/semantic-release-box/branch/master) |

Developer box for semantic-release bot.


## Getting started

Clone this repository:
```
$ git clone --recursive https://github.com/extra2000/semantic-release-box.git
$ cd semantic-release-box
```


## Preparing environment

Create `salt/roots/pillar/semantic-release.sls` based on example and then edit its values:
```
$ cp -v salt/roots/pillar/semantic-release.sls.example salt/roots/pillar/semantic-release.sls
```

Create a vagrant file from example:
```
$ cp -v vagrant/examples/Vagrantfile.semantic-release-box.fedora-32.x86_64.example vagrant/Vagrantfile.semantic-release-box
```

Create Vagrant box and apply `state.highstate`:
```
$ vagrant up --provider=libvirt
$ vagrant ssh semantic-release-box -- sudo salt-call state.highstate
```


## Example usage

Create a [new personal access token](https://github.com/settings/tokens/new) for `semantic-release` access. Make sure to enable the following [scopes](https://github.com/semantic-release/github#github-authentication).

Execute `semantic-release` state to build and run its command:
```
$ vagrant ssh semantic-release-box -- sudo salt-call state.sls semantic-release
```
