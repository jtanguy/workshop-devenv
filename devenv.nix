{ pkgs, ... }:
{
  devcontainer.enable = true;
  # https://devenv.sh/languages/
  languages.javascript.enable = true;

  
  processes = {
    serve.exec = "cd docs; npm run serve";
  };

  # See full reference at https://devenv.sh/reference/options/
}
