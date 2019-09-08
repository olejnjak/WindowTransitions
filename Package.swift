// swift-tools-version:5.0
import PackageDescription

let pkg = Package(name: "WindowTransitions")
pkg.platforms = [
    .iOS(.v9)
]
pkg.products = [
    .library(name: "WindowTransitions", targets: ["WindowTransitions"])
]

let pmk: Target = .target(name: "WindowTransitions")
pmk.path = "WindowTransitions"
pkg.targets = [
    pmk
]