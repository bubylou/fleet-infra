let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };

in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    docker
    doctl
    fluxcd
    git
    httpie
    kind
    kubectl
    kubernetes-helm
    kubeseal
    lazygit
    lf
    (nerdfonts.override { fonts = [ "Mononoki"]; })
    neovim
    tmux
    ripgrep
    zoxide
  ];
}
