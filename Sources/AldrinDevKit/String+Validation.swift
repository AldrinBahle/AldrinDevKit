import Foundation

public extension String {
    
    /// Checks if the string is a valid email address.
    /// ```swift
    /// "test@example.com".isValidEmail // true
    /// ```
    
    var isValidEmail: Bool {
        let regex = #"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES[c] %@", regex).evaluate(with: self)
    }

    /// Returns true if the string contains only numeric characters.
    /// ```swift
    /// "12345".isNumeric // true
    /// ```
    
    var isNumeric: Bool {
        !isEmpty && allSatisfy {
            $0.isNumber
        }
    }

    /// Validates a basic international phone number.
    /// ```swift
    /// "+27821234567".isValidPhone // true
    /// ```
    
    var isValidPhone: Bool {
        let regex = #"^\+?[0-9]{7,15}$"#
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }

    /// Checks if the string is a valid URL.
    /// ```swift
    /// "https://apple.com".isValidURL // true
    /// ```
    
    var isValidURL: Bool {
        URL(string: self)?.scheme != nil && URL(string: self)?.host != nil
    }

    /// Checks if the string contains only alphabetic characters.
    /// ```swift
    /// "HelloWorld".isAlphabetic // true
    /// ```
    
    var isAlphabetic: Bool {
        !isEmpty && allSatisfy {
            $0.isLetter
        }
    }

    /// Checks if the string is alphanumeric.
    /// ```swift
    /// "Swift123".isAlphanumeric // true
    /// ```
    
    var isAlphanumeric: Bool {
        !isEmpty && allSatisfy {
            $0.isLetter || $0.isNumber
        }
    }
}
