<!-- .slide: class="transition-bg-sfeir-1" -->

# Interlude direnv

##==##
<!-- .slide: class="with-code" -->

# direnv, un outil pour gérer votre $ENV

```bash
# .envrc
export WORKSHOP="devenv"
export CURRENT_STEP="jq"
```

```shell [1|1-3|1-5|1-6]
$ cd 02-jq
direnv: loading /workspaces/workshop-devenv/steps/02-jq/.envrc
direnv: export +CURRENT_STEP +WORKSHOP

$ cd ..
direnv: unloading
```

##==##

# Intégrations direnv

```bash [2|2-6]
# .envrc
layout node

source_url "https://raw.githubusercontent.com/cachix/devenv/d1f7b48e35e6dee421cfd0f51481d17f77586997/direnvrc" "sha256-YBzqskFZxmNb3kYVoKD9ZixoPXJh1C9ZvTLGFRkauZ0="

use devenv
```

L'intégration devenv lance automatiquement un `devenv shell` dans un dossier avec devenv