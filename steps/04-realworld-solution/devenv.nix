{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env = {
    GREET = "devenv";
    PORT = 3001;
    JWT_KEY = "supersecretkey_example";
    DEV_DB_USERNAME = "root";
    DEV_DB_PASSWORD = null;
    DEV_DB_NAME = "database_development";
    DEV_DB_HOSTNAME = "127.0.0.1";
    DEV_DB_DIALECT = "postgres";
    DEV_DB_LOGGGIN = true;
  };

  # https://devenv.sh/packages/
  packages = [ pkgs.git pkgs.usql ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  scripts.enterDB.exec = "usql postgres://root@localhost/database_development";

  enterShell = ''
    hello
    git --version
    usql --version
  '';

  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_18;
  };

  services.postgres = {
    enable = true;
    listen_addresses = "127.0.0.1";
    port = 5432;
    initialScript = ''
      CREATE USER postgres SUPERUSER;
      CREATE USER root SUPERUSER;
    '';
  };

}
