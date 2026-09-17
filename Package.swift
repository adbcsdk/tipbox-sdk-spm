// swift-tools-version:5.9
// 이 파일은 scripts/package-ios-spm-manual.sh 로 자동 생성됩니다. (수동 편집 금지)
// SPM 버전 = git tag (1.0.1). 바이너리는 GitHub Release 자산에서 내려받습니다.
import PackageDescription

let package = Package(
    name: "TipBoxSDK",
    platforms: [ .iOS(.v15) ],
    products: [
        .library(name: "TipBoxSDK", targets: ["TipBoxSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "TipBoxSDKCore",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.1/TipBoxSDKCore.xcframework.zip",
            checksum: "10476e64cea2975905df7c27aa1d8891b004d60e4bf6750183b92438b99bd562"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.1/UnityAds.xcframework.zip",
            checksum: "b2a24b88c463ec0923e9d05540eeff8fae90993224757642ea0f44974b8f8533"
        ),
        .target(
            name: "TipBoxSDK",
            dependencies: ["TipBoxSDKCore", "UnityAds"],
            path: "Sources/TipBoxSDK",
            resources: [ .process("PrivacyInfo.xcprivacy") ]
        )
    ]
)
