# configs

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
