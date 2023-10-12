<!-- .slide: class="transition-bg-sfeir-1" -->

# Devenv: syntaxe, doc et languges

##==##

# Syntaxe nix

<!-- .slide: class="with-code" -->

## Exemple de fichier devenv pour Rust

```nix
{ pkgs, lib, ... }:

{
  languages.rust = {
    enable = true;
    # https://devenv.sh/reference/options/#languagesrustchannel
    channel = "nightly";

    components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
  };

  #pre-commit.hooks = {
  #  rustfmt.enable = true;
  #  clippy.enable = true;
  #};

  packages = lib.optionals pkgs.stdenv.isDarwin (with pkgs.darwin.apple_sdk; [
    frameworks.Security
  ]);
}
```

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

```nix
{
    languages.rust = {
        enable = true;
        channel = "nightly";
    }
}
```

### ⚠️ Chaque instruction se termine par un ;

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
