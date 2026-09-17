//
//  TipBoxSDK (Swift 래퍼 타깃)
//
//  Kotlin/Native 코어(TipBoxSDKCore)를 그대로 re-export 한다.
//  매체는 `import TipBoxSDK` 만 하면 되고, TipBoxSdkIos 등 코어 심볼을 그대로 쓸 수 있다.
//
//  이 타깃이 UnityAds 에 의존하므로, 코어가 cinterop 으로 참조하는 Unity Ads 프레임워크가
//  매체 앱 링크 시 자동으로 함께 링크된다. (매체는 Unity Ads 를 별도로 추가할 필요가 없다.)
//

@_exported import TipBoxSDKCore

// 코어가 cinterop 으로 참조하는 Unity Ads 를 소비 앱에 링크되도록 보장.
import UnityAds
