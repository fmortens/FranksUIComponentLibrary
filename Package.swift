// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FranksUIComponentLibrary",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FRaisedButton",
            targets: ["FRaisedButton"]
        ),
        .library(
            name: "FRoundButton",
            targets: ["FRoundButton"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FRaisedButton",
            dependencies: [],
            path: "Sources/Buttons/FRaisedButton/"
        ),
        .target(
            name: "FRoundButton",
            dependencies: [],
            path: "Sources/Buttons/FRoundButton/"
        )
    ]
)
