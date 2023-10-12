{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ pkgs.usql ];

  enterShell = ''
    echo "# =========================================="
    echo "# Run \`devenv up\` to start DB and serve docs"
    echo "# =========================================="
  '';

  # https://devenv.sh/scripts/
  scripts.workshop-enterDB.exec = "usql postgres://localhost:5432/workshop";

  processes.docs.exec = "${pkgs.mkdocs}/bin/mkdocs serve";
  services.postgres.enable = true; 
  services.postgres = {
    listen_addresses = "127.0.0.1";
    initialDatabases = [{
      name = "workshop";
      schema = ./db/init.sql;
    }];
  };

}