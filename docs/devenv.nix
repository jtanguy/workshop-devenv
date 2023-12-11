{ pkgs, ... }:

{
  devcontainer.enable = true;
  devcontainer.settings.updateContentCommand = ''echo "Bienvenue sur le workshop devenv"'';
  devcontainer.settings.customizations.vscode.extensions = [ "bbenoist.Nix" ];

  # https://devenv.sh/languages/
  languages.javascript.enable = true;
  
  processes = {
    serve.exec = "cd docs; npm run serve";
  };
}
