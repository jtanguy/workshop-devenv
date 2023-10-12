<!-- .slide: class="transition-bg-sfeir-1" -->

# Devenv: les languages

##==##

# Avec des packages

<!-- .slide: class="with-code" -->

```nix
{ pkgs, ... }:
{
  packages = [ pkgs.rustc pkgs.cargo pkgs.clippy pkgs.rustfmt pkgs.rust-analyzer  ];
}
```

<!-- .element: class="big-code" -->

##==##

# Syntaxe des languages

<!-- .slide: class="with-code" -->

```nix
{ pkgs, ... }:
{
  languages.rust = {
    enable = true;
    channel = "stable";
  };
}
```

<!-- .element: class="big-code" -->

https://devenv.sh/languages/