// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "WindowTransitions",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "WindowTransitions", targets: ["WindowTransitions"]),
    ],
    targets: [
        .target(name: "WindowTransitions", path: "WindowTransitions")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
