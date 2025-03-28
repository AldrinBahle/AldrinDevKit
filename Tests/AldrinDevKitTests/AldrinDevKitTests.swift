import XCTest
import SwiftUI
@testable import AldrinDevKit

final class AldrinDevKitTests: XCTestCase {

    // MARK: - String+Manipulation

    func testCapitalizedFirst() {
        XCTAssertEqual("hello world".capitalizedFirst, "Hello world")
    }

    func testTrimmed() {
        XCTAssertEqual("  Hello  ".trimmed, "Hello")
    }

    func testIsBlank() {
        XCTAssertTrue("   ".isBlank)
        XCTAssertFalse("not blank".isBlank)
    }

    func testRemovingAllSpaces() {
        XCTAssertEqual(" H e l l o ".removingAllSpaces, "Hello")
    }

    // MARK: - String+Conversion

    func testURLEncoded() {
        XCTAssertEqual("hello world".urlEncoded, "hello%20world")
    }

    func testToDate() {
        let date = "2025-03-28".toDate()
        let calendar = Calendar.current
        XCTAssertEqual(calendar.component(.year, from: date!), 2025)
        XCTAssertEqual(calendar.component(.month, from: date!), 3)
        XCTAssertEqual(calendar.component(.day, from: date!), 28)
    }

    func testToInt() {
        XCTAssertEqual("42".toInt, 42)
        XCTAssertNil("abc".toInt)
    }

    func testToDouble() {
        XCTAssertEqual("3.14".toDouble, 3.14)
        XCTAssertNil("not a number".toDouble)
    }

    // MARK: - String+Validation

    func testIsValidEmail() {
        XCTAssertTrue("me@dev.com".isValidEmail)
        XCTAssertFalse("not-an-email".isValidEmail)
    }

    func testIsNumeric() {
        XCTAssertTrue("123456".isNumeric)
        XCTAssertFalse("abc123".isNumeric)
    }

    func testIsValidPhone() {
        XCTAssertTrue("+27831234567".isValidPhone)
        XCTAssertFalse("123".isValidPhone)
    }

    func testIsValidURL() {
        XCTAssertTrue("https://apple.com".isValidURL)
        XCTAssertFalse("not a url".isValidURL)
    }

    func testIsAlphabetic() {
        XCTAssertTrue("SwiftUI".isAlphabetic)
        XCTAssertFalse("Swift123".isAlphabetic)
    }

    func testIsAlphanumeric() {
        XCTAssertTrue("Swift123".isAlphanumeric)
        XCTAssertFalse("!?".isAlphanumeric)
    }

    // MARK: - String+Utilities

    func testSlugified() {
        XCTAssertEqual("Hello World!".slugified, "hello-world")
        XCTAssertEqual("SwiftUI 2025 🚀".slugified, "swiftui-2025")
    }

    func testContainsEmoji() {
        XCTAssertTrue("Hello 👋".containsEmoji)
        XCTAssertFalse("Hello".containsEmoji)
    }

    func testToJSONDictionary() {
        let jsonString = "{\"name\": \"Aldrin\"}"
        XCTAssertEqual(jsonString.toJSONDictionary?["name"] as? String, "Aldrin")
    }

    func testIsValidJSON() {
        XCTAssertTrue("{\"key\":\"value\"}".isValidJSON)
        XCTAssertFalse("{ invalid json".isValidJSON)
    }

    // MARK: - String+Localization

    func testLocalized() {
        let key = "welcome_message"
        // Can't assert actual result, as it depends on Localizable.strings
        XCTAssertNotNil(key.localized)
    }

    // MARK: - Font

#if canImport(SwiftUI)
    func testFontAccess() {
        _ = Font.titleBold
        _ = Font.subtitle
        _ = Font.bodyText
        _ = Font.footnoteCustom
        _ = Font.dynamic(.body, weight: .medium)
        _ = Font.customFont("AvenirNext-Bold", size: 18)
    }

    // MARK: - Color
    
    func testColorHelpers() {
        XCTAssertNotNil(Color.random)
        XCTAssertNotNil(Color("#1ABC9C"))
        XCTAssertNil(Color("12345"))
    }
#endif
}
