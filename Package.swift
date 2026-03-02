// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AEPDynamic",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(name: "AEPDynamic", targets: ["AEPDynamicWrapper"])
    ],
    dependencies: [],
    targets: [
        // Wrapper target — links all AEP binary frameworks
        .target(
            name: "AEPDynamicWrapper",
            dependencies: [
                "AEPCore",
                "AEPRulesEngine",
                "AEPIdentity",
                "AEPLifecycle",
                "AEPServices",
                "AEPSignal",
                "AEPMedia",
                "AEPAnalytics",
                .target(name: "AEPAssurance", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources/AEPDynamicWrapper",
            publicHeadersPath: "include"
        ),
        // Binary targets (iOS + tvOS)
        .binaryTarget(
        name: "AEPCore",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPCore-5.5.0.xcframework.zip",
        checksum: "dfa7c13ecec62d1fbd87d6c04b64421001545b2347d74a3f477a850caed49859"
        ),
        .binaryTarget(
        name: "AEPIdentity",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPIdentity-5.5.0.xcframework.zip",
        checksum: "f8c79266a58e896556d896485a38c6c0d8521b6d2d0c7ffd274b4bf7ba0a14bd"
        ),
        .binaryTarget(
        name: "AEPLifecycle",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPLifecycle-5.5.0.xcframework.zip",
        checksum: "ba8f40d19a2dd4a20c1a702f69e01f80f48cc6c8837a0d016edb7b8b02e90ae4"
        ),
        .binaryTarget(
        name: "AEPRulesEngine",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPRulesEngine-5.0.0.xcframework.zip",
        checksum: "e005c2189fef42c39e909ba49d635683495ba36bb9e9da078f0a0f9ac858f3ec"
        ),
        .binaryTarget(
        name: "AEPServices",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPServices-5.5.0.xcframework.zip",
        checksum: "fee68845f71328408e78e64e4e29c3b529cf35f1f5d670e9d5350630a4009104"
        ),
        .binaryTarget(
        name: "AEPSignal",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPSignal-5.5.0.xcframework.zip",
        checksum: "a8bf6701fe0b5e76526629be5b618c07a5f09718d0b841a921fe508a33a56670"
        ),
        .binaryTarget(
        name: "AEPMedia",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPMedia-5.0.1.xcframework.zip",
        checksum: "1dd232afe35207f82d4e6e7e28e3114ae9a3f71b90f417b1579c56a4fbe75ade"
        ),
        .binaryTarget(
        name: "AEPAnalytics",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPAnalytics-5.0.2.xcframework.zip",
        checksum: "fd64821532649409fd42b2417f33cb735a80053972dfbb30579fb619b55da788"
        ),
        // iOS only
        .binaryTarget(
        name: "AEPAssurance",
        url: "https://github.com/MaximKAkta/AEP-Dynamic-Wrapper/raw/main/AEPAssurance-5.0.3.xcframework.zip",
        checksum: "412597945486c3c3cd01138eb7ee7939cca2222f61987375bc181fcae92f0c53"
        )
    ]
)
