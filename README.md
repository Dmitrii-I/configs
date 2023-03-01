# configs

## Installing printer
* specify device URI using IP address of the printer
* there will be two printers shown, correct one being called `MFCL9570CDW`.


## Examples

```
ansible-playbook configure-e7250.yml \
    --connection=local \
    --inventory 127.0.0.1, \
    --become \
    --ask-become-pass \
    --verbose \
    --extra-vars git_user_name=Dmitrii-I --extra-vars git_user_email=me@gmail.com \
    --tags=gnome
```

## WinTile
Install WinTile from https://extensions.gnome.org//extension/1723/wintile-windows-10-window-tiling-for-gnome/ and then copy `metadata_wintile.json` to `~/.local/share/gnome-shell/extensions/wintile@nowsci.com/metadata.json` then reboot.
