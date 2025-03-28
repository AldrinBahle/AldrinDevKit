import Foundation

public extension String {
    
    /// Returns the localized version of the string using the `Localizable.strings` file.
    /// ```swift
    /// "welcome_message".localized
    /// ```

    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
