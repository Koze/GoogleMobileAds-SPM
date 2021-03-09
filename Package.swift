// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMobileAds-SPM",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "GoogleMobileAds",
            targets: ["GoogleMobileAdsTarget"]),
    ],
    dependencies: [
        .package(name: "GoogleAppMeasurement",
                 url: "https://github.com/google/GoogleAppMeasurement.git",
                 from:  "7.0.0"
        ),
        .package(name: "GoogleUserMessagingPlatform-SPM",
                 url: "https://github.com/Koze/GoogleUserMessagingPlatform-SPM.git",
                 from: "1.1.0")
    ],
    targets: [
        .target(name: "GoogleMobileAdsTarget",
                dependencies: [
                    .target(name: "GoogleMobileAds"),
                    .product(name: "UserMessagingPlatform", package: "GoogleUserMessagingPlatform-SPM"),
                    .product(name: "GoogleAppMeasurement", package: "GoogleAppMeasurement"),
                ],
                path: "Sources/dummy",
                linkerSettings: [
                    .linkedFramework("AudioToolbox"),
                    .linkedFramework("AVFoundation"),
                    .linkedFramework("CFNetwork"),
                    .linkedFramework("CoreGraphics"),
                    .linkedFramework("CoreMedia"),
                    .linkedFramework("CoreTelephony"),
                    .linkedFramework("CoreVideo"),
                    .linkedFramework("MediaPlayer"),
                    .linkedFramework("MessageUI"),
                    .linkedFramework("MobileCoreServices"),
                    .linkedFramework("QuartzCore"),
                    .linkedFramework("Security"),
                    .linkedFramework("StoreKit"),
                    .linkedFramework("SystemConfiguration"),
                    .linkedLibrary("z"),
                    .linkedLibrary("sqlite3")
                ]),
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "Binary/GoogleMobileAds.xcframework"),
//        .binaryTarget(name: "GoogleMobileAdsBinary",
//                      url: "",
//                      checksum: "),
    ]
)
