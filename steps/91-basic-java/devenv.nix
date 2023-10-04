{ pkgs, ... }:

{
  env.GREET = "basic java";
  packages = [ pkgs.git ];

  scripts.hello.exec = "echo hello from $GREET 👋";

  enterShell = ''
    hello
    echo $(git --version) $(which git)
    echo java version $(java -version 2>&1 | grep openjdk) $(which java)
    echo gradle version $(gradle --version | grep Gradle) $(which gradle)
  '';

  languages.java.enable = true;
  languages.java.jdk.package = pkgs.jdk20;
  languages.java.gradle.enable = true;
  languages.java.gradle.package = pkgs.gradle_7;
}
