// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libgd_spm",
    products: [
        .library(
            name: "gd",
            targets: ["gd"]
        ),
        .executable(name: "SwiftyG", targets: ["SwiftyG"])
    ],
    targets: [
        .target(
            name: "gd",
            dependencies: []
        ),
        .target(name: "SwiftyG", dependencies: [
            "gd"
        ])
    ]
)
