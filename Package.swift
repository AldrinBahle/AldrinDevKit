// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AldrinDevKit",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),  
        .watchOS(.v7),
        .tvOS(.v14)
    ],
    products: [
        .library(name: "AldrinDevKit", targets: ["AldrinDevKit"]),
    ],
    targets: [
        .target(name: "AldrinDevKit", dependencies: []),
        .testTarget(name: "AldrinDevKitTests", dependencies: ["AldrinDevKit"]),
    ]
)
