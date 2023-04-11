// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [],
            resources: [.process("Resources")]),
    ]
)
