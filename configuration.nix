# Main config file
{ inputs, config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/nixos/services.nix
    ./modules/nixos/hyprland.nix
    ./modules/nixos/virt.nix

    inputs.home-manager.nixosModules.default
  ];


  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "chad" = import ./home.nix;
    };
  };

  documentation.man.enable = true;
  documentation.dev.enable = true;
  environment.localBinInPath = true;
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-eaee431a-c4e7-4882-a82e-674124ca2277".device = "/dev/disk/by-uuid/eaee431a-c4e7-4882-a82e-674124ca2277";
  
  
  networking.hostName = "nixos";
  time.timeZone = "Europe/Warsaw";
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pl_PL.UTF-8";
    LC_IDENTIFICATION = "pl_PL.UTF-8";
    LC_MEASUREMENT = "pl_PL.UTF-8";
    LC_MONETARY = "pl_PL.UTF-8";
    LC_NAME = "pl_PL.UTF-8";
    LC_NUMERIC = "pl_PL.UTF-8";
    LC_PAPER = "pl_PL.UTF-8";
    LC_TELEPHONE = "pl_PL.UTF-8";
    LC_TIME = "pl_PL.UTF-8";
  };

  users.users.chad = {
    isNormalUser = true;
    description = "Jan Zachar";
    extraGroups = [ "networkmanager" "wheel" ];
  };


  nixpkgs.config.allowUnfree = true; # *Angry RMS noises*
  system.stateVersion = "24.05"; # DO NOT CHANGE EVER
}
