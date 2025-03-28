import Foundation

public extension String {
    
    /// Returns a URL-safe, percent-encoded version of the string.
    /// ```swift
    /// "hello world".urlEncoded // "hello%20world"
    /// ```
    
    var urlEncoded: String {
        addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? self
    }

    /// Converts the string into a `Date` using the given format.
    /// ```swift
    /// "2025-03-28".toDate() // Date object
    /// ```
    
    func toDate(format: String = "yyyy-MM-dd") -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: self)
    }

    /// Converts the string to an integer value.
    /// ```swift
    /// "42".toInt // 42
    /// ```
    
    var toInt: Int? {
        Int(self)
    }

    /// Converts the string to a double value.
    /// ```swift
    /// "3.14".toDouble // 3.14
    /// ```
    
    var toDouble: Double? {
        Double(self)
    }
}
