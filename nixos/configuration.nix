{ inputs, config, pkgs, systemSettings, userSettings, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader = { 
    systemd-boot = {
      enable = true;
      configurationLimit = 3;
    };
    efi.canTouchEfiVariables = true;
  };

  nix.settings = {
    experimental-features = "nix-command flakes";
    auto-optimise-store = true;
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  networking = {
    hostName = systemSettings.hostname;
    networkmanager.enable = true;
  };

  time.timeZone = systemSettings.timezone;
  i18n.defaultLocale = systemSettings.locale;

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };

  services = {
    qemuGuest.enable = true;
    spice-vdagentd.enable = true;
  };

  hardware = {
    opengl.enable = true;
  };

  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  environment = {
    sessionVariables = {
      NIXPKGS_ALLOW_UNFREE = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
      LIBGL_ALWAYS_SOFTWARE= "1";
    };
    
    systemPackages = with pkgs; [
      virt-manager
      virt-viewer
      spice spice-gtk
      spice-protocol
      win-virtio
      win-spice
      neofetch
      nano
      wget
      git
    ];
  };

  users.users = {
    ${userSettings.username} = {
      isNormalUser = true;
      description = userSettings.name;
      extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    };
  };

  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        user = userSettings.username;
      };
    };
  };

  system.stateVersion = systemSettings.version;
}