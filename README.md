Currently this repo is archived, due to lack of time.
Please use Gentoo-ZH instead.

# Xray-Overlay
entoo overlay for xray binaries

# How to use
```bash
doas eselect repository add Xray git 'https://github.com/JuanCldCmt/Xray-Overlay'
doas eix-sync
eix xray
```

# Troubleshooting

## Using transparent proxy
```bash
# Grant binary the cap_net_admin privledge, see https://xtls.github.io/config/transport.html#sockoptobject
doas setcap cap_net_admin+ep `which xray`
```
