// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PDFTronCollaboration",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PDFTronCollaboration",
            targets: ["PDFTronCollaboration"]),
    ],
    dependencies: [
        .package(
          url: "https://github.com/apollographql/apollo-ios.git",
          .upToNextMajor(from: "0.9.5")),
        .package(
          url: "https://github.com/PDFTron/pdftron-apple-package",
          .upToNextMajor(from: "9.2.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "PDFTronCollaboration",
                dependencies: [
                    .product(name: "PDFTron", package: "pdftron-apple-package"),
                    .product(name: "Apollo", package: "apollo-ios"),
                    .product(name: "ApolloWebSocket", package: "apollo-ios")
                ],
                path: "PDFTronCollaboration",
                exclude: ["GraphQL", "Scripts"]
               )
    ]
)
