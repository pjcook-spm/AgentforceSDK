// swift-tools-version:5.9
// (Xcode15.0+)
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgentforceSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AgentforceSDK",
            targets: ["AgentforceSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/gonzalezreal/swift-markdown-ui", from: "2.4.1"),
        .package(url: "https://github.com/livekit/client-sdk-swift", from: "2.12.1"),
    ],
    targets: [
        .binaryTarget(
            name: "AgentforceSDK",
            url: "https://github.com/pjcook-spm/AgentforceSDK/releases/download/14.13.1/AgentforceSDK.xcframework.zip",
            checksum: "891f4245556441c8851324c89b6f1ad04d43639ce397e810464cbcd135776fe9"
        ),
    ]
)
