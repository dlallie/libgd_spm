import XCTest
@testable import libgd_spm

final class libgd_spmTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(libgd_spm().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
