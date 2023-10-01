<!-- .slide: class="transition blue" -->
# Introduction à Nix

##==##

# Nix

> Nix est un package manager déclaratif

##==##

# Nix store

```shell [1|1-2|1-4|1-14]
$ which lnav
/nix/store/hcv2abrk1mhsnz67xjasg3pwz4wdkw7q-devenv-profile/bin/lnav

$ ls /nix/store/hcv2abrk1mhsnz67xjasg3pwz4wdkw7q-devenv-profile/bin/ -la
total 36
dr-xr-xr-x 2 root root 4096 Jan  1  1970 ./
dr-xr-xr-x 6 root root 4096 Jan  1  1970 ../
lrwxrwxrwx 3 root root   71 Jan  1  1970 corepack -> /nix/store/x8vrc1c6r8nn454whr99bxc5hdy5ybjf-nodejs-18.18.0/bin/corepack*
lrwxrwxrwx 3 root root   67 Jan  1  1970 honcho -> /nix/store/am744diswph5ml71n562k2rwhwk3ipw0-honcho-1.1.0/bin/honcho*
lrwxrwxrwx 3 root root   76 Jan  1  1970 .honcho-wrapped -> /nix/store/am744diswph5ml71n562k2rwhwk3ipw0-honcho-1.1.0/bin/.honcho-wrapped*
lrwxrwxrwx 2 root root   64 Jan  1  1970 lnav -> /nix/store/c9psaxm0syj8rriqdy8zaxns9s997rhk-lnav-0.11.2/bin/lnav*
lrwxrwxrwx 3 root root   67 Jan  1  1970 node -> /nix/store/x8vrc1c6r8nn454whr99bxc5hdy5ybjf-nodejs-18.18.0/bin/node*
lrwxrwxrwx 3 root root   66 Jan  1  1970 npm -> /nix/store/x8vrc1c6r8nn454whr99bxc5hdy5ybjf-nodejs-18.18.0/bin/npm*
lrwxrwxrwx 3 root root   66 Jan  1  1970 npx -> /nix/store/x8vrc1c6r8nn454whr99bxc5hdy5ybjf-nodejs-18.18.0/bin/npx*
```
