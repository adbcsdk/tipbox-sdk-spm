# TipBox SDK (iOS, Swift Package)

`import TipBoxSDK` 만으로 오퍼월 코어 + Unity Ads 가 함께 링크됩니다.

- 버전: 1.0.0 (SPM 버전 = git tag)
- 프레임워크는 `Frameworks/` 에 포함(Git LFS).

## 매체 연동
Xcode → Add Package Dependencies → `https://github.com/adbcsdk/tipbox-sdk-spm` → 1.0.0

## 매체 Info.plist 필요 항목
- NSUserTrackingUsageDescription (ATT)
- NSMotionUsageDescription (만보기)
- Unity SKAdNetworkItems 목록
