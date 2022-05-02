# Unofficial Swift Package for Google Mobile Ads SDK (deprecated)
Google has released an official package.  
Use the official package instead of this package.  
https://github.com/googleads/swift-package-manager-google-mobile-ads

## Required Settings

- Add the `-ObjC` option to `Other Linker Flags` in the `Build Settings` tab of the host project.

## Workaround for Xcode 12.0...12.4

- There is an issue with device installation or archive uploading, see the discussion and various workaround scripts in official Firebase SPM  
https://github.com/firebase/firebase-ios-sdk/issues/6472

Add the following script to `Scheme -> Build -> Post-actions`.
```sh
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Frameworks/GoogleMobileAds.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/PlugIns/GoogleMobileAds.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Watch/GoogleMobileAds.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/AppClips/AppClip.app/GoogleMobileAds.framework"

rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Frameworks/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/PlugIns/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Watch/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/AppClips/AppClip.app/UserMessagingPlatform.framework"

rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Frameworks/GoogleAppMeasurement.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/PlugIns/GoogleAppMeasurement.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Watch/GoogleAppMeasurement.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/AppClips/AppClip.app/GoogleAppMeasurement.framework"
```

## Official Information
https://developers.google.com/admob/ios/download  
There are release notes, terms of service, SDK binary and more.  
You can download official xcframework and construct your own Swift package safely.  