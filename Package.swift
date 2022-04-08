// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

 // ref. https://github.com/CocoaPods/Specs/blob/61d50feb1cdcfab1110ca471689b37d4a94341f1/Specs/5/9/a/Google-Mobile-Ads-SDK/9.2.0/Google-Mobile-Ads-SDK.podspec.json

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
                 "7.0.0"..<"9.0.0"
        ),
        .package(name: "GoogleUserMessagingPlatform-SPM",
                 url: "https://github.com/Koze/GoogleUserMessagingPlatform-SPM.git",
                 "1.1.0"..."2.0.0")
    ],
    targets: [
        .target(name: "GoogleMobileAdsTarget",
                dependencies: [
                    .target(name: "GoogleMobileAds"),
                    .product(name: "UserMessagingPlatform", package: "GoogleUserMessagingPlatform-SPM"),
                    .product(name: "GoogleAppMeasurement", package: "GoogleAppMeasurement"),
                ],
                path: "Sources",
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
