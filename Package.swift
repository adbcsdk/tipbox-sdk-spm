// swift-tools-version:5.9
// path 기반: 프레임워크가 이 레포 안(Frameworks/)에 함께 커밋됩니다. (Git LFS 권장)
import PackageDescription

let package = Package(
    name: "TipBoxSDK",
    platforms: [ .iOS(.v15) ],
    products: [
        .library(name: "TipBoxSDK", targets: ["TipBoxSDK"])
    ],
    targets: [
        .binaryTarget(name: "TipBoxSDKCore", path: "Frameworks/TipBoxSDKCore.xcframework"),
        .binaryTarget(name: "UnityAds",      path: "Frameworks/UnityAds.xcframework"),
        .target(
            name: "TipBoxSDK",
            dependencies: ["TipBoxSDKCore", "UnityAds"],
            path: "Sources/TipBoxSDK"
        )
    ]
)
