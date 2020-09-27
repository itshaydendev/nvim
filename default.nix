#  _   ___  __
# | |_| \ \/ / starnix -- (c) Hayden Young 2020
# |  _  |\  /  https://github.com/itshaydendev/starnix
# |_| |_|/_/   https://itshayden.dev
# 
with import <nixpkgs> {};

pkgs.neovim.override {
  vimAlias = true;
  withNodeJs = true;

  # needs pkgs.python3 pkgs.fzf pkgs.ripgrep pkgs.universal-ctags

  configure = (import ./customization.nix { pkgs = pkgs; });
}
