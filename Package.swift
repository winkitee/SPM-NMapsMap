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
            url: "https://github.com/winkitee/SPM-NMapsMap/releases/download/3.21.0/NMapsMap.zip",
            checksum: "56a1ed6d45f31e096cbd442e084fd1963d0ceda149d7cef015adae5ec5b35303"
        ),
    ]
)
