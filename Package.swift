// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AEPDynamic",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(name: "AEPCoreDynamic", targets: [
            "AEPCore",
            "AEPIdentity",
            "AEPLifecycle",
            "AEPServices",
            "AEPSignal",
            "AEPRulesEngine"
        ]),
        .library(name: "AEPMediaDynamic", targets: ["AEPMedia"]),
        .library(name: "AEPAnalyticsDynamic", targets: ["AEPAnalytics"]),
        .library(name: "AEPAssuranceDynamic", targets: ["AEPAssurance"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AEPCore",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPCore-5.5.0.xcframework.zip",
            checksum: "aa4df29caba6811142ae688e17076bb74931919f567bffa71c143089884df256"
        ),
        .binaryTarget(
            name: "AEPIdentity",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPIdentity-5.5.0.xcframework.zip",
            checksum: "4d482f5d3006ef79d8eca709bc7831ddc0d54bb1fc27b498031f101a593b692b"
        ),
        .binaryTarget(
            name: "AEPLifecycle",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPLifecycle-5.5.0.xcframework.zip",
            checksum: "d637ce72d1b2ad51362e5ad7f14b5c124ae6999e34309e5308516e4dfdc0ce5e"
        ),
        .binaryTarget(
            name: "AEPRulesEngine",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPRulesEngine-5.0.0.xcframework.zip",
            checksum: "56727e40e1295d5cc3e2ca42d1a2727b0596358f610100ba5a85e6e67096a680"
        ),
        .binaryTarget(
            name: "AEPServices",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPServices-5.5.0.xcframework.zip",
            checksum: "e7782a51187e405a80b6d02a9de234754b86c4117ecdb8dc5b7bbd674527317a"
        ),
        .binaryTarget(
            name: "AEPSignal",
            url: "https://github.com/adobe/aepsdk-core-ios/releases/download/5.5.0/AEPSignal-5.5.0.xcframework.zip",
            checksum: "facb7821133f0349c4fa870225e92fc4bb3026ee0bc12d1301c219bac952013f"
        ),
        .binaryTarget(
            name: "AEPMedia",
            url: "https://github.com/adobe/aepsdk-media-ios/releases/download/5.0.1/AEPMedia-5.0.1.xcframework.zip",
            checksum: "203abbf2c8ce9d9f007dacd397467bae7e022f5b67b069a4c71008ef641a05d4"
        ),
        .binaryTarget(
            name: "AEPAnalytics",
            url: "https://github.com/adobe/aepsdk-analytics-ios/releases/download/5.0.2/AEPAnalytics-5.0.2.xcframework.zip",
            checksum: "88dc7a20d63ce836c241b3d9ab2c2f1a1292d00103f445518127fccdc2d57c40"
        ),
        .binaryTarget(
            name: "AEPAssurance",
            url: "https://github.com/adobe/aepsdk-assurance-ios/releases/download/5.0.3/AEPAssurance-5.0.3.xcframework.zip",
            checksum: "a699d18aed81a7807886db232dbbe72d39ad58c2b2bec7dd0561de4202e8c41b"
        )
    ]
)