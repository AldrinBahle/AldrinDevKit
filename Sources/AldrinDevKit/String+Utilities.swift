import Foundation

public extension String {

    /// Converts the string into a slug for use in URLs or file names.
    /// ```swift
    /// "Hello World!".slugified // "hello-world"
    /// ```
    
    var slugified: String {
        let lowercase = self.lowercased()
        let allowed = CharacterSet.alphanumerics.union(.whitespaces)
        let filtered = lowercase.unicodeScalars.filter { allowed.contains($0) }
        let cleaned = String(String.UnicodeScalarView(filtered))
            .replacingOccurrences(of: " ", with: "-")
            .replacingOccurrences(of: "--+", with: "-", options: .regularExpression)
        return cleaned.trimmingCharacters(in: CharacterSet(charactersIn: "-"))
    }

    /// Returns true if the string contains any emoji characters.
    /// ```swift
    /// "Hello 👋".containsEmoji // true
    /// ```
    
    var containsEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x1F600...0x1F64F,
                 0x1F300...0x1F5FF,
                 0x1F680...0x1F6FF,
                 0x2600...0x26FF,
                 0x2700...0x27BF:
                return true
            default:
                continue
            }
        }
        return false
    }

    /// Attempts to decode the string into a JSON dictionary.
    /// ```swift
    /// "{\"name\":\"Aldrin\"}".toJSONDictionary?["name"] // "Aldrin"
    /// ```
    
    var toJSONDictionary: [String: Any]? {
        guard let data = self.data(using: .utf8) else {
            return nil
        }
        return (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
    }

    /// Checks whether the string is a valid JSON object.
    /// ```swift
    /// "{\"valid\":true}".isValidJSON // true
    /// ```
    
    var isValidJSON: Bool {
        toJSONDictionary != nil
    }
}
