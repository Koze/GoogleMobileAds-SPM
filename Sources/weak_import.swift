//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/19c82e02326e84a67cbe8dcba7e2c012237fc0c5/Specs/5/9/a/Google-Mobile-Ads-SDK/8.9.0/Google-Mobile-Ads-SDK.podspec.json#L63-L68

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
