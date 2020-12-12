// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libgd_spm",
    products: [
        .library(
            name: "gd",
            targets: ["libgd_spm"]
        )
    ],
    targets: [
        .target(
            name: "libgd_spm",
            dependencies: []
        )
    ]
)
