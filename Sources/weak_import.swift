//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref: podspec https://github.com/CocoaPods/Specs/blob/de67fc842c1575b51ef1680a12a4d2507ba5eabc/Specs/5/9/a/Google-Mobile-Ads-SDK/8.1.0/Google-Mobile-Ads-SDK.podspec.json#L56-L61

#if canImport(AdSupport)
import AdSupport
#endif

#if canImport(JavaScriptCore)
import JavaScriptCore
#endif

#if canImport(SafariServices)
import SafariServices
#endif

#if canImport(WebKit)
import WebKit
#endif
