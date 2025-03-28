import SwiftUI

// MARK: - Cross-platform Color extensions

public extension Color {
    
    /// Primary background color from asset catalog.
    /// ```swift
    /// .background(Color.backgroundPrimary)
    /// ```
    
    static let backgroundPrimary = Color("BackgroundPrimary")

    /// Secondary background color from asset catalog.
    /// ```swift
    /// .background(Color.backgroundSecondary)
    /// ```
    
    static let backgroundSecondary = Color("BackgroundSecondary")

    /// App's accent color from asset catalog.
    /// ```swift
    /// .foregroundColor(Color.accent)
    /// ```
    
    static let accent = Color("AccentColor")

    /// Primary text color from asset catalog.
    /// ```swift
    /// .foregroundColor(Color.textPrimary)
    /// ```
    
    static let textPrimary = Color("TextPrimary")

    /// Secondary text color from asset catalog.
    /// ```swift
    /// .foregroundColor(Color.textSecondary)
    /// ```
    
    static let textSecondary = Color("TextSecondary")
    
    /// Initializes a color from a hexadecimal string (e.g. "#FF5733" or "FF5733").
    /// ```swift
    /// Color(hex: "#3498db")
    /// ```
    
    init?(_ hex: String) {
        self.init(hex: hex)
    }

    init?(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }

        guard hexString.count == 6,
              let rgbValue = UInt64(hexString, radix: 16) else {
            return nil
        }

        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }

    /// Returns a random color.
    /// ```swift
    /// let color = Color.random
    /// ```
    
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

#if canImport(UIKit)
import UIKit

public extension Color {
    
    /// Adjusts the brightness of a color by a specified amount.
    /// ```swift
    /// Color.blue.adjustBrightness(by: 0.2)
    /// ```
    
    func adjustBrightness(by amount: CGFloat) -> Color {
        UIColor(self).adjustBrightness(by: amount).toColor()
    }
}

// MARK: - UIColor

public extension UIColor {

    /// Adjusts brightness for UIColor.
    
    func adjustBrightness(by amount: CGFloat) -> UIColor {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: min(max(brightness + amount, 0), 1), alpha: alpha)
        }
        return self
    }

    /// Converts UIColor to SwiftUI Color.
    
    func toColor() -> Color {
        Color(self)
    }
}
#endif
