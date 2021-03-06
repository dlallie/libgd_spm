// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libgd_spm",
    products: [
        //.library(name: "libjpeg", targets: ["libjpeg"]),
       // .library(name: "gd", targets: ["gd"]),
        .library(name: "SwiftGD", targets: ["SwiftGD"])
    ],
    targets: [
        /*.target(
            name: "gd",
            dependencies: [],
            cSettings: [
                .define("HAVE_LIBJPEG"),
                .headerSearchPath("usr/include"),
                .headerSearchPath("usr/local/Cellar/jpeg/9d/include")
            ]
        ),*/
        .systemLibrary(name: "gd_spm", pkgConfig: "gdlib", providers: [.apt(["libgd-dev"])]),
        .target(name: "SwiftGD", dependencies: [
            "gd_spm"
        ])
    ]
)
