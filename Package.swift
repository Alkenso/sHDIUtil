// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sHDIUtil",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "sHDIUtil",
            targets: ["sHDIUtil"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alkenso/SwiftSpellbook.git", from: "0.4.1"),
        .package(url: "https://github.com/Alkenso/SwiftSpellbook_macOS.git", from: "0.0.2"),
    ],
    targets: [
        .target(
            name: "sHDIUtil",
            dependencies: [
                .product(name: "Spellbook_macOS", package: "SwiftSpellbook_macOS"),
                .product(name: "SpellbookFoundation", package: "SwiftSpellbook"),
            ]
        ),
        .testTarget(
            name: "sHDIUtilTests",
            dependencies: [
                "sHDIUtil",
                .product(name: "SpellbookFoundation", package: "SwiftSpellbook"),
            ]
        ),
    ]
)
