// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSwiftPackage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "TestSwiftPackage",
            targets: ["TestSwiftPackage", "TestFramework"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/aws-amplify/amplify-swift", 
            exact: "2.25.4")
    ],
    targets: [
        .target(
            name: "TestSwiftPackage",
            dependencies: [
                .product(name: "Amplify", package: "amplify-swift")
            ]
        ),
        .binaryTarget(
            name: "TestFramework",
            path: "TestFramework.xcframework"
        )
    ]
)
