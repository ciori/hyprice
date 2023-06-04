# Hyprice

Hyprland rice configuration files


## Read Before Use

There are some requirements/limitations:
- **This is created for an AMD Graphics Card equipped system**. The setup will install the package `libva-mesa-driver` used for `wf-recorder`. In case you use something else, look for Hardware/Video Acceleration (VA-API) in the Arch Wiki and change that packet accordingly.
- **This rice is for a Desktop PC with Ethernet connection and no Bluetooth or WiFi**. The interface lacks all the useful widgets and shortcuts for bluetooth, wifi and battery and has no power management tools. They will probably be added in the future.

## Installation

Steps:
- start from a fresh installation of archlinux:
  - use the `archinstall` tool
  - select a minimal profile
  - use networkmanager
  - create a sudo user (non root)
- login as your non root user
- ...

## TODO

List:
- centralize color/theme/palette management
- remove every command interaction.
- add laptop support for wifi, bluetooth, battery and power management.