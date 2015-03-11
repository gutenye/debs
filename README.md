Debs, My .deb packages for Raspbian(Raspberry Pi), Debian and Ubuntu
==========================================================

|                |                                           |
|----------------|------------------------------------------ |
| Homepage:      | https://github.com/GutenYe/debs        |
| Author:	       | Guten                                     |
| License:       | GPL                                      |
| Issue Tracker: | https://github.com/GutenYe/debs/issues |

A List of Packages
-------------------

- [xware](http://g.xunlei.com/forum-51-1.html): Raspbian only.  Xunlei in Linux (迅雷固件)
- [syncthing](https://github.com/syncthing/syncthing): Raspbian only.  Open Source Continuous File Synchronization

Supported Releases
---------------------

**Raspbian**: raspbian-wheezy <br>
**Debian**: wheezy <br>
**Ubuntu**: utopic <br>

Install a Package
---------------

1. Get your release name by `$ cat /etc/*-release`

2. Replace the `RELEASE` with the name you found, e.g. `raspbian-wheezy` for Raspbian, `wheezy` for Debian, `utopic` for Ubuntu.

``` bash
$ sudo apt-key adv --keyserver pgp.mit.edu --recv-keys FD337D66
$ echo 'deb http://guten.me/debs RELEASE main' | sudo /etc/apt/sources.list.d/guten.list
$ sudo apt-get update
$ sudo apt-get install PACKAGE
```

Build
-----

1. Download the upstream package
2. Build: `$ ./make-debs.sh`

Development
===========

- Use [aptly](http://www.aptly.info/) to create an APT repository.
- Use [Github Pages](https://pages.github.com/) to host the APT repository. Be aware that Github is not meant for this kind of hosting and have a [100MB per file limit](https://help.github.com/articles/what-is-my-disk-quota/), alternative you can use Amazon S3 for hosting.
- Documentation on creating an deb package: [Debian New Maintainers' Guide](http://www.debian.org/doc/manuals/maint-guide/index.en.html), [Packaging Wiki](https://wiki.debian.org/Packaging)

Copyright
-------

Copyright 2015 Guten Ye

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
