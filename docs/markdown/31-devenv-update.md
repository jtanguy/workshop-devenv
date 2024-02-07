<!-- .slide: class="transition blue" -->

# Comment garder devenv à jour ?

##==##

# devenv update

<!-- .slide: class="with-code max-height" -->

```shell [1|2|3-5|6-8|1-23]
$ devenv update
warning: updating lock file '/home/jtanguy/Sfeir/workshop-devenv/docs/devenv.lock':
• Updated input 'devenv':
    'github:cachix/devenv/895e8403410c3ec14d1e8cae94e88b4e7e2e8c2f?dir=src%2fmodules' (2023-12-10)
  → 'github:cachix/devenv/0e68853bb27981a4ffd7a7225b59ed84f7180fc7?dir=src%2fmodules' (2024-02-03)
• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/29d6c96900b9b576c2fb89491452f283aa979819' (2023-12-10)
  → 'github:NixOS/nixpkgs/8cc79aa39bbc6eaedaf286ae655b224c71e02907' (2024-02-06)
• Updated input 'pre-commit-hooks':
    'github:cachix/pre-commit-hooks.nix/e1d203c2fa7e2593c777e490213958ef81f71977' (2023-12-11)
  → 'github:cachix/pre-commit-hooks.nix/0db2e67ee49910adfa13010e7f012149660af7f0' (2024-02-07)
• Updated input 'pre-commit-hooks/flake-compat':
    'github:edolstra/flake-compat/35bb57c0c8d8b62bbfd284272c928ceb64ddbde9' (2023-01-17)
  → 'github:edolstra/flake-compat/0f9255e01c2351cc7d116c072cb317785dd33b33' (2023-10-04)
• Updated input 'pre-commit-hooks/flake-utils':
    'github:numtide/flake-utils/a1720a10a6cfe8234c0e93907ffe81be440f4cef' (2023-05-31)
  → 'github:numtide/flake-utils/4022d587cbbfd70fe950c1e2083a02621806a725' (2023-12-04)
• Updated input 'pre-commit-hooks/gitignore':
    'github:hercules-ci/gitignore.nix/a20de23b925fd8264fd7fad6454652e142fd7f73' (2022-08-14)
  → 'github:hercules-ci/gitignore.nix/43e1aa1308018f37118e34d3a9cb4f5e75dc11d5' (2023-12-29)
• Updated input 'pre-commit-hooks/nixpkgs-stable':
    'github:NixOS/nixpkgs/c37ca420157f4abc31e26f436c1145f8951ff373' (2023-06-03)
  → 'github:NixOS/nixpkgs/3dc440faeee9e889fe2d1b4d25ad0f430d449356' (2024-01-10)
```
