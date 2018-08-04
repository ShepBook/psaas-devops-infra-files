### What is this repo?

This repo contains the code required to build an OVA that runs a few different things.

Firstly, it uses Packer to build an OVA. That OVA runs docker, and uses the open source docker management console, Portainer, to allow easy management by anyone. Portainer is also running in a docker container.

Secondly, the primary function is to run a Node.js application. This is running within another docker container.

The Node.js application container has been published at https://hub.docker.com/r/shepbook/psaas-devops-exercise/, and could be updated by triggering a rebuild with pull from within Portainer. Currently, there is only one version, but making updates easy is important. Also, publishing the app container separate from the OVA will allow us to update the app quickly and easily. The base OVA and the OS contained within is unlikely to need rebuilding often.

The OVA is setup to use the 18.04 LTS, which will be maintained by the Ubuntu upstream until April 2023.

The default is for Portainer to run on port 9000.

The application runs on port 8080 by default. This is easily changed within Portainer.
