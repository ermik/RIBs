// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// This package explores ability to wrap non-SPM modules by building them from sources, while still using Cocoapods and Carthage to retrieve them.
let package = Package(
    name: "RIBs",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "RIBs", type: .static, targets: ["RIBs"]),
        .library(name: "RIBsStatic", type: .static, targets: ["RIBs"]),
        .library(name: "RIBsDynamic", type: .dynamic, targets: ["RIBs"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "RIBs",
            dependencies: ["RxSwift", "RxRelay"],
            path: "ios/RIBs"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
