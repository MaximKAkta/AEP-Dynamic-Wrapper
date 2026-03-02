## AEP Dynamic Wrapper

This package provides a temporary Swift Package Manager wrapper around Adobe Experience Platform (AEP) iOS SDK binaries.

The original Adobe repositories distribute **static** binary frameworks. This wrapper republishes the same `.xcframework` artifacts as **dynamic** binaries and exposes them via SPM `binaryTarget`s so they can be consumed as a single package.

### Package layout

- **Target** `AEPDynamicWrapper` – umbrella target that links all AEP binaries:
  - `AEPCore`
  - `AEPRulesEngine`
  - `AEPIdentity`
  - `AEPLifecycle`
  - `AEPServices`
  - `AEPSignal`
  - `AEPMedia`
  - `AEPAnalytics`
  - `AEPAssurance` (iOS only)
- **Binary targets** – each AEP module is provided as a separate `binaryTarget` backed by an `.xcframework.zip` hosted in this repository.

All binary URLs in `Package.swift` point to `raw` links under this GitHub repo (branch `main`) so that consumers do not depend directly on Adobe-hosted binaries.

### Usage

Add the package to your `Package.swift`:

```swift
.package(
    url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper.git",
    .upToNextMinor(from: "0.1.0")
)
```

Then depend on the wrapper target from your app or framework:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "AEPDynamic", package: "AEP-Dynamic-Wrapper")
    ]
)
```

### Notes and limitations

- This package is intended as a **temporary solution** until official dynamic AEP binaries are provided upstream.
- The binary archives are mirrored from the official Adobe GitHub releases. Only the hosting location and checksums are different; no code changes are applied to the SDKs themselves.
- Because the binaries are served from `raw` GitHub URLs, you should pin this package to a specific version or commit to avoid unexpected changes.

