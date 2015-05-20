Install
--------

**Create an APT Repository**

1. [Create a GPG key](http://www.dewinter.com/gnupg_howto/english/GPGMiniHowto-3.html#ss3.1)
2. Setup a repo

```
$ aptly repo create -distribution=debian default
$ aptly publish repo default
```

**Push to Github**

```
$ ln -s ~/.aptly/public dist
...
```
setup aptly




