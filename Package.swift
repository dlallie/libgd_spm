// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libgd_spm",
    products: [
        .library(
            name: "gd",
            targets: ["gd"]
        )
    ],
    targets: [
        .target(
            name: "gd",
            dependencies: []
        )
    ]
)
