// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "PolarBleSdk",
    platforms: [
        .iOS(.v14), .watchOS(.v5)
    ],
    
    products: [
        .library( name: "PolarBleSdk", targets: ["PolarBleSdk"]),
    ],
    dependencies: [
        .package(name: "RSwiftExt", url: "https://github.com/RSwiftCommunity/RSwiftExt.git", .exact("6.2.1")),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        .target(
            name: "PolarBleSdk",
            dependencies: ["SwiftProtobuf", "RxSwiftExt"],
            path: "sources/iOS/ios-communications/Sources",
            exclude: ["iOSCommunications/Info.plist", "PolarBleSdk/Info.plist"]
        ),
    ]
)
