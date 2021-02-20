# Unofficial Swift Package for Google Mobile Ads SDK

Currently Google doesn't provide Google Mobile Ads SDK as Swift package.
This repogitory is alternate for using that as Swift package.
For security reasons, I hope that Google will officially provide the package.

## Note
If you're using Xcode 12.0, and have an issue with device installation or archive uploading, see the workaround like official Firebase SPM  
https://github.com/firebase/firebase-ios-sdk/issues/6472#issuecomment-694449182

You needs to add the following script for this package.
```sh
rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app/Frameworks/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app/Frameworks/GoogleMobileAds.framework"
```
