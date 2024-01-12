// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSwiftPackage",
    products: [
        .library(
            name: "TestFramework",
            targets: ["TestFrameworkWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/onevcat/Kingfisher",
            exact: "7.10.1"
        )
    ],
    targets: [
        .target(
            name: "TestFrameworkWrapper",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .target(name: "TestFramework")
            ],
            path: "Sources/TestFrameworkWrapper"
        ),
        .binaryTarget(
            name: "TestFramework",
            path: "TestFramework.xcframework"
        )
    ]
)
