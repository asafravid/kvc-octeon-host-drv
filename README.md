Copyright (c) 2022 Marvell.

# kvc-octeon-host-drv

This is a [kmods-via-containers](https://github.com/kmods-via-containers/kmods-via-containers)
implementation for the Octeon Host Drivers.

# Usage

- Follow the instructions in https://docs.openshift.com/container-platform/4.10/hardware_enablement/psap-special-resource-operator.html as reference.
- Example for `yaml` files and `helm` chart are in this repository under the `sro_octeon-host-drv` directory.
- Place `sources-pcie_ep_octeontx-SDK-11.U.release.tar.bz2` from octeon `pcie-ep` release in a `wget`-able directory and update `octeon-host-drv-configmap.yaml` (within `sro_octeon-host-drv\chart`) under:

        spec:
          #debug: true 
          namespace: octeon-host-drv
          chart:
            name: octeon-host-drv
            version: 0.0.1
            repository:
              name: example
              url: cm://octeon-host-drv/octeon-host-drv-chart 
          set:
            kind: Values
            apiVersion: sro.openshift.io/v1beta1
            buildArgs:
            - name: "DRIVER_SOURCES_WGET_TAR_BZ2_PATH"
              value: "http://10.5.210.12/sources-pcie_ep_octeontx-SDK-11.U.release.tar.bz2" <--------

