//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/e85a12ac6c4d5e43bc0ace037b14aa2e7b46098c/Specs/5/9/a/Google-Mobile-Ads-SDK/8.13.0/Google-Mobile-Ads-SDK.podspec.json#L63-L68

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
