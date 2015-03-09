Debs, My .deb packages for Raspbian(Raspberry Pi), Debian and Ubuntu
==========================================================

|                |                                           |
|----------------|------------------------------------------ |
| Homepage:      | https://github.com/GutenYe/debs        |
| Author:	       | Guten                                     |
| License:       | GPL                                      |
| Issue Tracker: | https://github.com/GutenYe/debs/issues |


Getting Started
---------------

1. Download hello.deb files from [Releases](https://github.com/GutenYe/debs/releases)
2. Install: `sudo dpkg -i hello.deb`
3. Edit Configuration: `/etc/init.d/hello`

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
