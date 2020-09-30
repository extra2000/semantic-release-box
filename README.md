# semantic-release-devbox

Developer box for semantic-release bot.


## Getting started

Clone this repository:
```
$ git clone --recursive https://github.com/extra2000/semantic-release-devbox.git
$ cd semantic-release-devbox
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
  nodejs:
    version: 12.18.4
    nvm:
      version: 0.36.0
```

Finally, execute:
```
$ vagrant ssh semantic-release-box -- sudo salt-call state.sls semantic-release
```
