// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(

    name: "xcode15crash",
    platforms: [

        .macOS(.v10_13),
    ],
    targets: [

        .executableTarget(

            name: "xcode15crash",
            path: "Sources"
        ),
    ]
)
