import SwiftUI

public extension Font {
    
    /// Bold, large title font (24pt)
    /// ```swift
    /// Text("Title").font(.titleBold)
    /// ```
    
    static let titleBold = Font.system(size: 24, weight: .bold)

    /// Medium-weight subtitle font (18pt)
    /// ```swift
    /// Text("Subtitle").font(.subtitle)
    /// ```
    
    static let subtitle = Font.system(size: 18, weight: .medium)

    /// Regular body font (16pt)
    /// ```swift
    /// Text("Body").font(.bodyText)
    /// ```
    
    static let bodyText = Font.system(size: 16, weight: .regular)

    /// Light footnote font (12pt)
    /// ```swift
    /// Text("Note").font(.footnote)
    /// ```
    
    static let footnoteCustom = Font.system(size: 12, weight: .light)
    
    /// Creates a scalable font for a given text style.
    /// ```swift
    /// Font.dynamic(.body, weight: .medium)
    /// ```
    
    static func dynamic(_ textStyle: TextStyle, weight: Font.Weight = .regular) -> Font {
        .system(textStyle, design: .default).weight(weight)
    }
    
    /// Custom font by name and size.
    /// ```swift
    /// Font.custom("AvenirNext-Bold", size: 18)
    /// ```
    
    static func customFont(_ name: String, size: CGFloat) -> Font {
        .custom(name, size: size)
    }
}
