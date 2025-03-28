import Foundation

public extension String {
    
    /// Capitalizes only the first letter of the string.
    /// ```swift
    /// "hello world".capitalizedFirst // "Hello world"
    /// ```
    
    var capitalizedFirst: String {
        prefix(1).capitalized + dropFirst()
    }

    /// Removes leading and trailing whitespace and newlines.
    /// ```swift
    /// "  Hello  ".trimmed // "Hello"
    /// ```
    
    var trimmed: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// Returns true if the string is empty or contains only whitespace.
    /// ```swift
    /// "   ".isBlank // true
    /// ```
    
    var isBlank: Bool {
        trimmed.isEmpty
    }

    /// Removes all spaces and newlines from the string.
    /// ```swift
    /// " H e l l o ".removingAllSpaces // "Hello"
    /// ```
    
    var removingAllSpaces: String {
        replacingOccurrences(of: "\\s+", with: "", options: .regularExpression)
    }
}
