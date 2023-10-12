{ pkgs, ... }:
{
  devcontainer.enable = true;
  devcontainer.settings.customizations.vscode.extensions = [ "bbenoist.Nix" "jnoortheen.nix-ide" ];
  
  # https://devenv.sh/languages/
  languages.javascript.enable = true;

  
  processes = {
    serve.exec = "cd docs; npm run serve";
  };

}
