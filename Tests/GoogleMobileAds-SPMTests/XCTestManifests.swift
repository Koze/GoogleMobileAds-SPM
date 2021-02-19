import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GoogleMobileAds_SPMTests.allTests),
    ]
}
#endif
