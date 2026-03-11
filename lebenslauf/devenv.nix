{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    gnumake
    pandoc
    pandoc-secnos
    haskellPackages.pandoc-crossref
  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  languages.texlive = {
    enable = true;
    packages = [
      "xifthen"
      "ifmtarg"
      "raleway"
      "fontawesome"
      "moresize"
      "droid"
      "comfortaa"
    ];
    base = pkgs.texliveMedium;
  };
  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = ''
  #   echo hello from $GREET
  # '';

  enterShell = ''
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    # echo "Running tests"
    # git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
