// swift-tools-version:5.9
// 이 파일은 scripts/package-ios-spm-manual.sh 로 자동 생성됩니다. (수동 편집 금지)
// SPM 버전 = git tag (1.0.2). 바이너리는 GitHub Release 자산에서 내려받습니다.
import PackageDescription

let package = Package(
    name: "TipBoxSDK",
    platforms: [ .iOS(.v15) ],
    products: [
        // 소스 래퍼 없이 바이너리를 product 에 직접 노출. (stamp-ios-spm 과 동일한 단순 구조)
        .library(name: "TipBoxSDK", targets: ["TipBoxSDKCore", "UnityAds", "AdPopcornSSP"])
    ],
    targets: [
        .binaryTarget(
            name: "TipBoxSDKCore",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.2/TipBoxSDKCore.xcframework.zip",
            checksum: "804e16941a2c26cd1aa1f043d623a36fcbccb89ef33e098f5ad9bbc588fdf6d8"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.2/UnityAds.xcframework.zip",
            checksum: "859a75900c5e6accd68f1eef3694c87fab142170f8dc4abdb379af44396cefb8"
        ),
        // 애드팝콘 SSP (리워드 워터폴 1순위, AdPopcornSSP 2.11.9 벤더링)
        .binaryTarget(
            name: "AdPopcornSSP",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.2/AdPopcornSSP.xcframework.zip",
            checksum: "5d38979d803f648e0a4965dcd4bbc1604bf3f4c8531999a844dec82844de4c08"
        )
    ]
)
