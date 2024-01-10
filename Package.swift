// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSwiftPackage",
    products: [
        .library(
            name: "TestFramework",
            targets: ["TestFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "TestFramework",
            path: "TestFramework.xcframework")
    ]
)