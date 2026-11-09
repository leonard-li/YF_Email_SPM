// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Email",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Email",
            targets: ["YF_Email_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_Email_Target",
            dependencies: [
                "YF_Email_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Email_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/email/1.0.6/YFEmailKit.xcframework.zip",
            checksum: "3735df34cbd9d8f9f4008f0298782dbef9bd5aba3030cd233db25acbe3051aa3"
        )
    ]
)