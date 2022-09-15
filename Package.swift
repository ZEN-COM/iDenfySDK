// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iDenfySDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iDenfySDK",
            targets: ["FaceTecSDK", "idenfycore", "IdenfyLiveness", "idenfyNFCReading", "iDenfySDK", "idenfyviews"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "FaceTecSDK",
            path: "IdenfyLiveness/FaceTecSDK.xcframework"
        )
        .binaryTarget(
            name: "idenfycore",
            path: "IdenfyLiveness/idenfycore.xcframework"
        )
        .binaryTarget(
            name: "IdenfyLiveness",
            path: "IdenfyLiveness/IdenfyLiveness.xcframework"
        )
        .binaryTarget(
            name: "idenfyNFCReading",
            path: "IdenfyLiveness/idenfyNFCReading.xcframework"
        )
        .binaryTarget(
            name: "iDenfySDK",
            path: "IdenfyLiveness/iDenfySDK.xcframework"
        )
        .binaryTarget(
            name: "idenfyviews",
            path: "IdenfyLiveness/idenfyviews.xcframework"
        )
    ]
)
