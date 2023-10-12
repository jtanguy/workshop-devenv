<!-- .slide: class="transition-bg-sfeir-1" -->

# Devenv: Scripts, processes et services

##==##

# Scripts
<!-- .slide: class="with-code" -->


Permet de définir des scripts utilitaires au projet

```nix
{ pkgs, ... }:

{
  packages = [ pkgs.curl pkgs.jq ]; 

  scripts.silly-example.exec = ''
    curl "https://httpbin.org/get?$1" | jq '.args'
  '';
}
```

##==##
<!-- .slide: class="with-code" -->


# Scripts


On peut utiliser les binaires sans les inclure dans le packages

```nix
{ pkgs, ... }:

{
  packages = [pkgs.jq];
  scripts.devenv-bump-version.exec = ''
    # TODO: ask for the new version
    # TODO: update the version in the mkdocs.yml
    echo assuming you bumped the version in mkdocs.yml, populating src/modules/latest-version
    cat mkdocs.yml | ${pkgs.yaml2json}/bin/yaml2json | jq -r '.extra.devenv.version' > src/modules/latest-version
  '';
}
```
##==##

# Processes

Les processes sont tous démarrés par `devenv up` (honcho est utilisé sous le capot)

```nix
{ pkgs, ... }:

{
  processes = {
    silly-example.exec = "while true; do echo hello && sleep 1; done";
    ping.exec = "ping example.com";
  };
}
```

```shell
$ devenv up
Starting processes ...

20:37:44 system          | ping.1 started (pid=4094686)
20:37:44 system          | silly-example.1 started (pid=4094688)
20:37:44 silly-example.1 | hello
20:37:44 ping.1          | PING example.com (93.184.216.34) 56(84) bytes of data.
20:37:44 ping.1          | 64 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=1 ttl=55 time=125 ms
20:37:45 silly-example.1 | hello
20:37:45 ping.1          | 64 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=2 ttl=55 time=125 ms
20:37:46 silly-example.1 | hello
20:37:46 ping.1          | 64 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=3 ttl=55 time=125 ms
20:37:47 silly-example.1 | hello
20:37:47 ping.1          | 64 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=4 ttl=55 time=125 ms
...
```

##==##
<!-- .slide: class="with-code" -->

# Services

* packages -> languages
* processes -> services

https://devenv.sh/services/#supported-services


```nix
{ pkgs, ... }:

{
  services.redis.enable = true;
}
```
<!-- .element: class="big-code" -->
