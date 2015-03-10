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

- [xware](http://g.xunlei.com/forum-51-1.html): Xunlei in Linux (迅雷固件)

Supported Distributions
---------------------

**Raspbian**: raspbian-wheezy <br>
**Debian**: wheezy <br>
**Ubuntu**: utopic <br>

Install a Package
---------------

Replace the `DIST` with the name listed above, e.g. raspbian-wheezy

	$ sudo apt-key adv --keyserver pgp.mit.edu --recv-keys FD337D66
	$ echo 'deb http://guten.me/debs DIST main' | sudo /etc/apt/sources.list.d/guten.list
	$ sudo apt-get update
	$ sudo apt-get install <pkg>

Build
-----

1. Download the upstream package
2. Build: `$ ./make-debs.sh`

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
