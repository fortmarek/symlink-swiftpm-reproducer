// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "symlink-swiftpm-reproducer",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "symlink-swiftpm-reproducer",
            targets: ["symlink-swiftpm-reproducer"]
        )
    ],
    dependencies: [
        .package(id: "tuist.Noora", exact: "0.49.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "symlink-swiftpm-reproducer"
        ),
        .testTarget(
            name: "symlink-swiftpm-reproducerTests",
            dependencies: ["symlink-swiftpm-reproducer"]
        ),
    ]
)
