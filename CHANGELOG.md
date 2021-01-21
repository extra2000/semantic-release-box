# Changelog

## [2.1.0](https://github.com/extra2000/semantic-release-box/compare/v2.0.1...v2.1.0) (2021-01-21)


### Features

* **submodule:** Update `podman-formula` to [v2.2.1](https://github.com/extra2000/podman-formula/releases/tag/v2.2.1) ([a93351f](https://github.com/extra2000/semantic-release-box/commit/a93351f43e5e2426a2bd8eeaf7ba17931cca1d17))
* **vagrant:** Add Fedora 33 `x86_64` box ([dfba4eb](https://github.com/extra2000/semantic-release-box/commit/dfba4eb9a6240fe0aaedf2a9a47241c8a9e890e6))


### Documentations

* **README:** Default to Fedora 33 ([5e5aeb1](https://github.com/extra2000/semantic-release-box/commit/5e5aeb1a05143cf48cb1b05496a4ed168465f079))


### Continuous Integrations

* **AppVeyor:** Change Fedora 32 to Fedora 33 ([978ca09](https://github.com/extra2000/semantic-release-box/commit/978ca0964f7645d395091ec38d47888c5b637066))
* **AppVeyor:** Upgrade Ubuntu from `18.04` to `20.04` ([1d6ebda](https://github.com/extra2000/semantic-release-box/commit/1d6ebda5b159a50c651b0e8faa0ab0f57e6b119a))


### Code Refactoring

* **vagrant:** Replace `sudo` with `privileged: true` ([3eb6550](https://github.com/extra2000/semantic-release-box/commit/3eb655050f042c801979bd967d503976941c8c60))
* **vagrant:** Standardize Salt Minion installations to `v3002.2` and via `git` ([e864fba](https://github.com/extra2000/semantic-release-box/commit/e864fbac3082bc899544afd7f435869665102885))

### [2.0.1](https://github.com/extra2000/semantic-release-box/compare/v2.0.0...v2.0.1) (2020-11-28)


### Documentations

* **README:** Fix AppVeyor badge URL ([1524b62](https://github.com/extra2000/semantic-release-box/commit/1524b620ca27517510652fc0e313c277739d8685))

## [2.0.0](https://github.com/extra2000/semantic-release-box/compare/v1.2.0...v2.0.0) (2020-11-28)


### ⚠ BREAKING CHANGES

* **vagrant, gitignore:** Required `.gitignore` file has been removed and user required to choose any Vagrant example files.
* **package.install:** `ulimit` argument during Podman build has been removed. Thus, Podman 1.x on CentOS 7 is no longer supported.

### Features

* **podman-formula:** Update to [2.1.0](https://github.com/extra2000/podman-formula/releases/tag/v2.1.0) ([fe24d41](https://github.com/extra2000/semantic-release-box/commit/fe24d4103441f51c46ec10be03b8754bf3eda9a1))
* **salt:** Add `podman-formula` into `state.highstate` ([8db14bd](https://github.com/extra2000/semantic-release-box/commit/8db14bd0b5b619ad96ad7aa2bab66ceaa1200c89))
* **salt:** Add `swapoff` state to disable swap memory ([a4cf1b8](https://github.com/extra2000/semantic-release-box/commit/a4cf1b82bab02efe31a501560949aeecace323d8))
* **vagrant:** Add Debian 10 `x86_64` box ([61a3733](https://github.com/extra2000/semantic-release-box/commit/61a37330179b001ba5ea25031dfbc21ad896e104))
* **vagrant:** Add Fedora 32 `x86_64` box ([ece4401](https://github.com/extra2000/semantic-release-box/commit/ece44019bb2c0806fb7e593f4ac9d6d009f40a32))
* **vagrant:** Add openSUSE Leap 15.2 `aarch64` box ([28af787](https://github.com/extra2000/semantic-release-box/commit/28af7877a86cb9ea4a5fdd4fc6712ce625d0fce8))
* **vagrant:** Add openSUSE Leap 15.2 `aarch64` QEMU box ([4311263](https://github.com/extra2000/semantic-release-box/commit/43112634ba7de310ca71a7a5667259a5c5cc8be0))
* **vagrant:** Add openSUSE Leap 15.2 `x86_64` box ([50efeb4](https://github.com/extra2000/semantic-release-box/commit/50efeb4772223b20b3a2e49cefae6effc8800b7d))
* **vagrant:** Add openSUSE Tumbleweed `aarch64` box ([6ffddf9](https://github.com/extra2000/semantic-release-box/commit/6ffddf9f355386d3c0fc6e737cd0b84f907335e7))
* **vagrant:** Add openSUSE Tumbleweed `aarch64` QEMU box ([4f39a19](https://github.com/extra2000/semantic-release-box/commit/4f39a193d90e042f1347a8dfa04761fb294e8c62))
* **vagrant:** Add openSUSE Tumbleweed `x86_64` box ([e2a44f8](https://github.com/extra2000/semantic-release-box/commit/e2a44f85c352224e362b82bc449263c58a35b053))
* **vagrant:** Add Ubuntu 20.04 `x86_64` box ([90b075f](https://github.com/extra2000/semantic-release-box/commit/90b075f167f10670da79decd20d15214eb2a18a7))


### Code Refactoring

* **gitignore:** Remove `vagrant/examples/` from `.gitignore` ([68324ab](https://github.com/extra2000/semantic-release-box/commit/68324ab54f5465bd3ddf4ef73ed1f027af90e81f))
* **package.install:** Remove `ulimit` during Podman build ([88710aa](https://github.com/extra2000/semantic-release-box/commit/88710aa757627f70cb4866618aadc5328b9bd7ea))
* **salt:** Rename `build.install` state to `build.semantic-release` state ([43527af](https://github.com/extra2000/semantic-release-box/commit/43527af5ea8358f1cb75a79e952aef6c9b73ba3d))
* **salt:** Rename `package` state to `build` state ([bac121e](https://github.com/extra2000/semantic-release-box/commit/bac121e359b70fc86f5b57f5a984d561584ae2e2))
* **salt:** Rename `service` state to `command` state ([1b4afd3](https://github.com/extra2000/semantic-release-box/commit/1b4afd3b26ec8a1be42200b76cb53d915ea52524))
* **vagrant, gitignore:** Remove required Vagrant file and add into `.gitignore` ([8c60790](https://github.com/extra2000/semantic-release-box/commit/8c6079076dcd10c492a9aab96f8c2a29e2ace405))


### Continuous Integrations

* **AppVeyor:** Add `semantic-release` ([89ef6cc](https://github.com/extra2000/semantic-release-box/commit/89ef6cc4980017f65d601be7ef237c3c53cc3701))
* Remove Travis CI because it is no longer free for open source project ([8b41858](https://github.com/extra2000/semantic-release-box/commit/8b4185879292df663f6e98235e86ed40f18ec6d9))
* **semantic-release:** Write version to `VERSION.txt` ([8c1fe51](https://github.com/extra2000/semantic-release-box/commit/8c1fe516b6a07680b5596fe326f20a701e3f9785))
* Update build instructions for Travis CI and AppVeyor ([a249636](https://github.com/extra2000/semantic-release-box/commit/a2496365bd9dcc37c0516e3584c380211ab98938))


### Documentations

* **README:** Remove Travis CI badge ([596cc21](https://github.com/extra2000/semantic-release-box/commit/596cc2175e835ff9e8a2e94ca23824d2aa603163))
* **README:** Update instructions ([c7211a8](https://github.com/extra2000/semantic-release-box/commit/c7211a86b261576144e7359778868b7655bab907))
* **salt/roots/pillar:** Add `semantic-release.sls.example` file ([4751c70](https://github.com/extra2000/semantic-release-box/commit/4751c7074eac37f82f4720fff588c58750d29305))

## [1.2.0](https://github.com/extra2000/semantic-release-box/compare/v1.1.6...v1.2.0) (2020-10-23)


### Features

* **podman-formula:** Update to v2.0.1 ([76b7173](https://github.com/extra2000/semantic-release-box/commit/76b717393aacabd9ff700abf56d7c2e98528e219))

### [1.1.6](https://github.com/extra2000/semantic-release-box/compare/v1.1.5...v1.1.6) (2020-10-14)


### Fixes

* **Dockerfile:** Fix NVM installation error ([6064377](https://github.com/extra2000/semantic-release-box/commit/60643772af1db98461df05900d033cf2c6475144))

### [1.1.5](https://github.com/extra2000/semantic-release-box/compare/v1.1.4...v1.1.5) (2020-10-04)


### Continuous Integrations

* **semantic-release:** Fix patch updates with BREAKING CHANGE doesn't trigger major release ([e79a885](https://github.com/extra2000/semantic-release-box/commit/e79a88559f0ee0538728a301091fc78ce11de716))


### Maintenance

* **podman-formula:** Patch updates ([5b1d322](https://github.com/extra2000/semantic-release-box/commit/5b1d322bfb55d650ec2808f861c28af32071a8cd))

### [1.1.4](https://github.com/extra2000/semantic-release-box/compare/v1.1.3...v1.1.4) (2020-10-03)


### Fixes

* **semantic-release.package.install:** Replace hardcoded username with value from pillar ([5805d80](https://github.com/extra2000/semantic-release-box/commit/5805d809928ae582611c7f3e344427c1c92e7fbb))

### [1.1.3](https://github.com/extra2000/semantic-release-box/compare/v1.1.2...v1.1.3) (2020-10-02)


### Maintenance

* **podman-formula:** Patch updates ([49bc3c2](https://github.com/extra2000/semantic-release-box/commit/49bc3c201a54e31bdf82b58e38843af03d831cee))


### Continuous Integrations

* **semantic-release:** Add fix type ([64b8b76](https://github.com/extra2000/semantic-release-box/commit/64b8b7655e76af202c342221b07db74a03681293))

### [1.1.2](https://github.com/extra2000/semantic-release-box/compare/v1.1.1...v1.1.2) (2020-10-02)


### Maintenance

* **podman-formula:** Patch updates ([1401ee4](https://github.com/extra2000/semantic-release-box/commit/1401ee473183f1080a5329cf47cf2bf42be61230))

### [1.1.1](https://github.com/extra2000/semantic-release-box/compare/v1.1.0...v1.1.1) (2020-10-01)


### Maintenance

* **podman-formula:** Patch updates ([16ebf2e](https://github.com/extra2000/semantic-release-box/commit/16ebf2ee02d7f22c80061d1e049996375e772b1c))

## [1.1.0](https://github.com/extra2000/semantic-release-box/compare/v1.0.4...v1.1.0) (2020-10-01)


### Features

* Add support to execute semantic-release on a specific branch ([445dcad](https://github.com/extra2000/semantic-release-box/commit/445dcade1f078d9ac7bc19a648b5b9f5684abf3a))


### Continuous Integrations

* **semantic-release:** Add rc, beta, and alpha release channels ([cdbe1dc](https://github.com/extra2000/semantic-release-box/commit/cdbe1dc6cc980d2a747416e1f13ae460b210bf9a))
* **semantic-release:** Remove invalid release branches ([ae83bff](https://github.com/extra2000/semantic-release-box/commit/ae83bff2fa001eeebb652d58d3f8b851b5e048e1))

### [1.0.4](https://github.com/extra2000/semantic-release-box/compare/v1.0.3...v1.0.4) (2020-10-01)


### Documentations

* Rename semantic-release-devbox to semantic-release-box ([dfe4227](https://github.com/extra2000/semantic-release-box/commit/dfe422780a52aed6b2dc262554f3eff4885ae474))


### Continuous Integrations

* **semantic-release:** Remove scope README for docs ([6d8b40e](https://github.com/extra2000/semantic-release-box/commit/6d8b40e75c5456486a5fa049657e2f0526edd770))

### [1.0.3](https://github.com/extra2000/semantic-release-box/compare/v1.0.2...v1.0.3) (2020-09-30)


### Documentations

* **README:** Add badges ([51b6868](https://github.com/extra2000/semantic-release-box/commit/51b6868b136e7dcc514f419086774babc5053659))

### [1.0.2](https://github.com/extra2000/semantic-release-box/compare/v1.0.1...v1.0.2) (2020-09-30)


### Continuous Integrations

* Add AppVeyor ([261be86](https://github.com/extra2000/semantic-release-box/commit/261be86fc7d257fac7a514e7c6e2099d3e31b9ac))

### [1.0.1](https://github.com/extra2000/semantic-release-box/compare/v1.0.0...v1.0.1) (2020-09-30)


### Maintenance

* **pillar:** Remove unused nodejs pillar ([bf94ae8](https://github.com/extra2000/semantic-release-box/commit/bf94ae8dbe8a127b658568d4ec92c3047df31323))


### Continuous Integrations

* **travis:** Add missing pillar/semantic-release.sls ([b3b7ce8](https://github.com/extra2000/semantic-release-box/commit/b3b7ce889fa78cacc85367f45c2637c077949de5))
* **travis:** Add Slack notifications ([531cb81](https://github.com/extra2000/semantic-release-box/commit/531cb8116d40a3a5bcc4ef4d6f340f9df5f925a3))
* **travis:** Fix wrong test instructions ([1746b29](https://github.com/extra2000/semantic-release-box/commit/1746b29624e0ac95d4eb154e0c546ceb1934d965))
* Add Travis CI and semantic-release ([e7104ab](https://github.com/extra2000/semantic-release-box/commit/e7104ab3635d29aa8117061094500f39f2f0cfc1))
