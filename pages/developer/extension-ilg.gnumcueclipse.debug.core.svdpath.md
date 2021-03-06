---
layout: page
permalink: /developer/extension/ilg.gnumcueclipse.debug.core.svdpath/
title: The ilg.gnumcueclipse.debug.core.svdPath extension point
author: Liviu Ionescu

redirect_from:
  - /developer/extension/ilg.gnuarmeclipse.debug.core.svdpath/

date: 2015-09-10 20:58:00 +0300

---

## Purpose

This extension point provides decoupled access to a SVD file from the debug plug-ins.

It must be implemented by distributions that include SVD files managed outside CMSIS-PACK.

## Definition

The Eclipse definition of this extension point is in [ilg.gnumcueclipse.debug.core/schema/svd_path.exsd](https://github.com/gnu-mcu-eclipse/eclipse-plugins/blob/develop/bundles/ilg.gnumcueclipse.debug.core/schema/svd_path.exsd).

## API

The extension point refers to a factory that creates a class that must implement [ISVDPathManager](https://github.com/gnu-mcu-eclipse/eclipse-plugins/blob/develop/bundles/ilg.gnumcueclipse.debug.core/src/ilg/gnumcueclipse/debug/core/data/ISVDPathManager.java).

The only function required is:

```java
public IPath getSVDAbsolutePath(String deviceVendorId, String deviceName);
```

## Where is this extension point used?

The svdPath extension point is used in [ilg.gnumcueclipse.debug.gdbjtag.data/SVDPathManagerProxy.java](https://github.com/gnu-mcu-eclipse/eclipse-plugins/blob/develop/bundles/ilg.gnumcueclipse.debug.gdbjtag/src/ilg/gnumcueclipse/debug/gdbjtag/data/SVDPathManagerProxy.java), called from `SVDUtils.getTree(String deviceVendorId, String deviceName)`:

```java
// Try to get the SVD from a custom provider, like in DAVE.
SVDPathManagerProxy pathManager = SVDPathManagerProxy.getInstance();
path = pathManager.getSVDAbsolutePath(deviceVendorId, deviceName);

if (path == null) {

    // Try to get the SVD from the CMSIS Packs.
    IPacksDataManager dataManager = PacksDataManagerFactoryProxy
                .getInstance().createDataManager();

    if (dataManager == null) {
        throw new CoreException(
                new Status(Status.ERROR, Activator.PLUGIN_ID,
                        "Peripherals descriptions are available only via the Packs plug-in."));
    }

    path = dataManager.getSVDAbsolutePath(deviceVendorId, deviceName);

    if (path == null) {
        throw new CoreException(
                new Status(Status.ERROR, Activator.PLUGIN_ID,
                        "There are no peripherals descriptions available, install the required packs."));
    }
}
```

As seen above, the extension point has precedence over any CMSIS-PACK definitions, so, if it is defined, and it returns a SVD path, the returned path is used to read the SVD file.

The content of the SVD file is further used to populate the Peripherals view in the debug plug-ins.
