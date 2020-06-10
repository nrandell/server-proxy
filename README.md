# Server proxy
Various scripts and configuration used to setup the server proxy so internal machines can be access securely at xxx.nickrandell.me

Before running the following needs to be configured

- gen-cert.sh to generate a local certificate that can be used by kestrel to run under https
- create nginx.env to configure the EMAIL of the dnsimple user
- create dnsimple.ini to include dns_dnsimple_token = XXXX to allow Dnsimple to be configured
- add any more proxies into config.d
- link those proxies into the run

