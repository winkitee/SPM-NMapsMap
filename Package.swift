// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "NMapsMap",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMapTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/winkitee/SPM-NMapsGeometry.git", branch: "winkitee-1.0.2")
    ],
    targets: [
        .target(
            name: "NMapsMapTarget",
            dependencies: [
                .target(name: "NMapsMapBinary"),
                .product(name: "NMapsGeometry", package: "SPM-NMapsGeometry")
            ],
            path: "Sources/NMapsMap"
        ),
        .binaryTarget(
            name: "NMapsMapBinary",
            url: "https://github.com/winkitee/SPM-NMapsMap/releases/download/3.20.0/NMapsMap.zip",
            checksum: "4134e7b714d83966fb879e61b50e7da46ca69a53d4241e700dfa960a99da64d3"
        ),
    ]
)
