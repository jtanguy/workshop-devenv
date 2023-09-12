{ pkgs, ... }:

{
  env.GREET = "basic frontend";
  packages = [ pkgs.git pkgs.vscode ];

  scripts.hello.exec = "echo hello from $GREET 👋";

  enterShell = ''
    hello
    echo $(git --version) $(which git)
    echo node version $(node --version) $(which node)
    echo npm version $(npm --version) $(which npm)
    echo VSCode version $(code --version | head -n 1) $(which code)
  '';

  languages.typescript.enable = true;
  languages.javascript.enable = true;
  languages.javascript.package = pkgs.nodejs_20;
}
