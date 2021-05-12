//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/5e6f58cb8a00efa7bdbce41fc69d3cf48a358637/Specs/5/9/a/Google-Mobile-Ads-SDK/8.5.0/Google-Mobile-Ads-SDK.podspec.json#L59-L63

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
