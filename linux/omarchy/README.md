# Omarchy backup for this machine

This folder contains the working Omarchy configuration that was copied from the live machine so it can be restored later after a reinstall.

## What is included

This backup contains the active Omarchy setup, including:

- Hyprland user config from ~/.config/hypr
- Omarchy shell config from ~/.config/omarchy
- The full Solitude theme folder, copied intact
- The Solitude wallpapers and wallpaper assets
- Plugin configuration and enabled plugin state
- Theme-specific lockscreen and appearance settings
- Custom border and window styling changes

## Source snapshot

This backup was captured from the current system with these active customizations:

- Theme: Solitude
- Border size: 1
- Gaps: 4 in, 5 out
- Rounding: 6
- Shadow: enabled
- Cursor: capitaine-cursors-light, size 24
- Display: 1920x1200, scale 1.25
- Lockscreen plugin: shmall.lock
- Omaland plugin: enabled and used for layout/window management
- Top bar: transparent Omarchy bar with workspaces, clock, weather, tray, system stats, media, power, and plugin drawer

## Important directories

- ./hypr/ — Hyprland config files
- ./themes/solitude/ — complete Solitude theme folder, copied as-is
- ./plugins/ — installed Omarchy plugins
- ./shell.json — Omarchy shell layout config
- ./shell.toml — shell font and base settings

## Wallpaper copies

The Solitude wallpaper set is also kept under:

- ../wallpaper/solitude/

This ensures the wallpapers are preserved separately from the active theme directory and can be reused without re-downloading or hunting for assets.

## Restore process

When reinstalling Omarchy later:

1. Install Omarchy normally.
2. Copy the contents of this folder back into ~/.config/omarchy
3. Copy the contents of ./hypr into ~/.config/hypr
4. Copy the Solitude theme back into ~/.config/omarchy/themes/solitude if needed
5. Reinstall or re-enable the required Omarchy plugins if they are not already present
6. Reload Hyprland or restart the session

Example:

```bash
mkdir -p ~/.config/omarchy ~/.config/hypr
cp -a /path/to/dotfiles/linux/omarchy/. ~/.config/omarchy/
cp -a /path/to/dotfiles/linux/omarchy/hypr/. ~/.config/hypr/
```

Then apply or reselect the Solitude theme through Omarchy's theme tools if it is not already selected.

## Notes

This is meant to be a quick recovery snapshot, not a git-managed package. It is meant to get the desktop back to a working state in roughly an hour after reinstalling.

The goal is to preserve the exact visual setup that exists right now:

- the Solitude theme
- its wallpapers
- topbar layout
- border style and rounded windows
- custom lock screen
- Omarchy plugin layout
- Hyprland tweaks and monitor scaling
