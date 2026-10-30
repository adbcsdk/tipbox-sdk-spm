// swift-tools-version:5.9
// 이 파일은 scripts/package-ios-spm-manual.sh 로 자동 생성됩니다. (수동 편집 금지)
// SPM 버전 = git tag (1.0.3). 코어 바이너리는 GitHub Release 자산에서 내려받고,
// 광고 SDK(애드팝콘 + 미디에이션, Unity 포함)는 디펜던시로 함께 설치됩니다.
//
// 매체 사용:  import TipBoxSDKCore   →  TipBoxSdkIos.shared.start(...) 등
import PackageDescription

let package = Package(
    name: "TipBoxSDK",
    platforms: [ .iOS(.v15) ],
    products: [
        .library(name: "TipBoxSDK", targets: ["TipBoxSDK"])
    ],
    dependencies: [
        // 코어가 컴파일될 때 사용한 버전과 맞추기 위해 exact 로 고정한다.
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-SPM.git", exact: "3.4.4"),
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-APSSPMediationUnityAdsAdapter-SPM.git", exact: "4210000.0.0"),
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-APSSPMediationFyberAdapter-SPM.git", exact: "8050000.0.0"),
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-APSSPMediationVungleAdapter-SPM.git", exact: "7070800.0.0"),
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-APSSPMediationPangleAdapter-SPM.git", exact: "803000800.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "TipBoxSDKCore",
            url: "https://github.com/adbcsdk/tipbox-sdk-spm/releases/download/1.0.3/TipBoxSDKCore.xcframework.zip",
            checksum: "e2e5666d610a0e3ddf4af05b3570f748d5cd5aef8ea39c37552ee5f0aa3c6c09"
        ),
        .target(
            name: "TipBoxSDK",
            dependencies: [
                "TipBoxSDKCore",
                .product(name: "APSSPSDK", package: "ap-APSSPSDK-SPM"),
                .product(name: "APSSPMediationUnityAds", package: "ap-APSSPSDK-APSSPMediationUnityAdsAdapter-SPM"),
                .product(name: "APSSPMediationFyber", package: "ap-APSSPSDK-APSSPMediationFyberAdapter-SPM"),
                .product(name: "APSSPMediationVungle", package: "ap-APSSPSDK-APSSPMediationVungleAdapter-SPM"),
                .product(name: "APSSPMediationPangle", package: "ap-APSSPSDK-APSSPMediationPangleAdapter-SPM"),
            ],
            path: "Sources/TipBoxSDK"
        )
    ]
)
