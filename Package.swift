// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScrollViewProxy",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "ScrollViewProxy",
            targets: ["ScrollViewProxy"]
        ),
    ],
    dependencies: [
        .package(name: "SwiftUIIntrospect", url: "https://github.com/siteline/SwiftUI-Introspect.git", from: "1.1.1")
    ],
    targets: [
        .target(
            name: "ScrollViewProxy",
            dependencies: ["SwiftUIIntrospect"]),
    ]
)
