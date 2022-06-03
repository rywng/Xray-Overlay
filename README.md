# Xray-Overlay
Gentoo overlay for xray binaries

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
nya setcap cap_net_admin+ep `which xray`
```
