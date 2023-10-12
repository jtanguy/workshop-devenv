<!-- .slide: class="transition-bg-sfeir-1" -->

# Devenv: syntaxe et doc

##==##

<!-- .slide: class="with-code" -->

# devenv.yaml

```yaml
inputs:
  nixpkgs:
    url: github:NixOS/nixpkgs/nixpkgs-unstable
```

<!-- .element: class="big-code" -->

##==##

<!-- .slide: class="with-code" -->

# devenv.yaml

```yaml
allowUnfree: true
inputs:
  nixpkgs:
    url: github:NixOS/nixpkgs/nixpkgs-unstable
  myproject:
    url: github:owner/myproject
    flake: false
  myproject2:
    url: github:owner/myproject
    overlays:
      - default
imports:
  - ./frontend
  - ./backend
  - ./mymodule.nix
  - myproject
  - myproject/relative/path
```

##==##

# Syntaxe nix pour Devenv

<!-- .slide: class="with-code" -->

## Exemple de fichier devenv.nix

```nix
{ pkgs, ... }:

{
  languages.rust = {
    enable = true;
    channel = "nightly";
    components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
  };

  #pre-commit.hooks = {
  #  rustfmt.enable = true;
  #  clippy.enable = true;
  #};

  packages = [ pkgs.git pkgs.curl pkgs.jq pkgs.usql ];
}
```

### ⚠️ Chaque instruction se termine par un ;

##==##

# Syntaxe nix

<!-- .slide: class="with-code" -->

## AttributSet - "paramètres du script" 

```nix
{ pkgs, lib, ... }:
{
    # ...
}
```

<!-- .element: class="big-code" -->

### ⚠️ Ici on termine par :

##==##

# Syntaxe nix

<!-- .slide: class="with-code" -->

## Tableaux 

```nix
{
  packages = [ pkgs.git pkgs.curl pkgs.jq pkgs.usql ];
}
```

<!-- .element: class="big-code" -->

##==##

# Nix Package

![](./assets/images/nix-package-search.png)

![https://search.nixos.org/packages](https://search.nixos.org/packages)


##==##

# Syntaxe nix

<!-- .slide: class="with-code" -->

## Les objets - ou comment regrouper les clés

```nix
{
    languages.rust.enable = true;
    languages.rust.channel = "nightly";
}
```

<!-- .element: class="big-code" -->

```nix
{
    languages.rust = {
        enable = true;
        channel = "nightly";
    }
}
```

<!-- .element: class="big-code" -->

##==##

# Référence de toutes les clés du devenv.nix

![](./assets/images/devenv-nix-reference.png)

[https://devenv.sh/reference/options/](https://devenv.sh/reference/options/)
