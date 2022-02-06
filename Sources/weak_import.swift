//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/5d3ce7f94b5f7ec4c04ce89edbda4854ec6b92ca/Specs/5/9/a/Google-Mobile-Ads-SDK/9.0.0/Google-Mobile-Ads-SDK.podspec.json#L63-L68

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
