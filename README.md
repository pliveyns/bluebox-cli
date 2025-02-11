# bluebox-cli

## What is bluebox-cli ?

bluebox-cli is a set of GitHub actions and skeleton files to build custom toolbox and distrobox images. 

This based on Universal Blue's boxkit.
Check out https://github.com/ublue-os/boxkit to create your own.

## How to use bluebox-cli

### How everything is organized

- The ContainerFiles for the custom images are stored in the `ContainerFiles/` folder.
- The setup scripts for the custom images (if needed) are stored in the `scripts/` folder.
- The package lists for the setup scripts (if needed) are stored in the `packages/` folder.
- The Github workflow that generates the images is `.github/workflows/build-boxkit.yml`

## Using the custom images

If you use distrobox:

    distrobox create -i ghcr.io/pliveyns/bluebox-cli -n bluebox-cli
    distrobox enter bluebox-cli
    
If you use toolbox:

    toolbox create -i ghcr.io/pliveyns/bluebox-cli -c bluebox-cli
    toolbox enter bluebox-cli

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/quickstart/quickstart-cosign/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/pliveyns/blubox-cli
    
