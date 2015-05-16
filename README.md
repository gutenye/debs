Debs, My deb packages for Ubuntu, Debian and Raspbian(Raspberry Pi)
==========================================================

See [aurs](https://github.com/gutenye/aurs) for my Arch Linux AUR Packages.

Linux Packaging is the boringest thing in the world, so I only maintain packages used by myself, and they're usually on Raspbian. If you want more, please add as a Collaborator or send Pull-Requests. Luck for us, someone is working on [solutions](http://0pointer.net/blog/revisiting-how-we-put-together-linux-systems.html), and Snappy Ubuntu Core has a [new packaging way](https://developer.ubuntu.com/en/snappy/#snap-developers)

|                |                                        |
|----------------|----------------------------------------|
| Homepage:      | https://github.com/GutenYe/debs        |
| Author:	       | Guten                                  |
| License:       | GPL                                    |
| Issue Tracker: | https://github.com/GutenYe/debs/issues |

A List of Packages
-------------------

- [xware](http://g.xunlei.com/forum-51-1.html): Raspbian only. Xunlei in Linux
- [syncthing](https://github.com/syncthing/syncthing): Raspbian only. Open Source Continuous File Synchronization

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

The MIT License (MIT)

Copyright (c) 2015 Guten Ye

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
