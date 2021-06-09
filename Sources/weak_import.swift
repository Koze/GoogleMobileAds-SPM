//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/e4b5e0f498f1887d2fdf5027e518d2e40bed3522/Specs/5/9/a/Google-Mobile-Ads-SDK/8.6.0/Google-Mobile-Ads-SDK.podspec.json#L62-L67

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
