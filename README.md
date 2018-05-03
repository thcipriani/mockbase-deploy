# Mockbase

A deploy repo used by scap3 devs to test new scap3 features.

# Git LFS

This repo uses git-lfs to store a large binary file. Since scap rewrites the
upstream URL as part of fetching, the file `.lfsconfig` was necessary for
testing. To use this repo inside scap-vagrant:

```
vagrant ssh
cd /srv/deployment/mockbase
mv deploy deploy.bak
git clone https://github.com/thcipriani/mockbase-deploy.git deploy
targets 'rm -rf /srv/deployment/mockbase'
targets 'mkdir -p /srv/deployment/mockbase/deploy-cache'
targets 'chown -R vagrant:vagrant /srv/deployment/mockbase'
```

From there `scap deploy` should Just Work™.
