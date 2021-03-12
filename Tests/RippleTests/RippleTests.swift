import XCTest
@testable import Ripple

final class RippleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Ripple().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
