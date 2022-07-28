// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CybridApiBankSwift",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11),
        .tvOS(.v9),
        .watchOS(.v3),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CybridApiBankSwift",
            targets: ["CybridApiBankSwift"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
        // Add BigInt dependency
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0"),
        // ------
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CybridApiBankSwift",
            // Add BigInt dependency
            dependencies: ["AnyCodable", "BigInt", ],
            path: "CybridApiBankSwift/APIClient"
        ),
    ]
)
