# 🚀 AldrinDevKit

AldrinDevKit is a lightweight, modern SwiftUI utility library offering handy extensions for `String`, `Color`, and `Font` — written to save time, promote clean code, and keep your SwiftUI projects sharp and DRY.

> 🍃 Simple. 💥 Powerful. 🔁 Reusable.

---

## ✨ Features

- ✅ `String` manipulation, validation, conversion
- 🎨 Color utilities (hex, random, brightness)
- 🔠 Font presets and scaling helpers
- 💬 Easy localization with `.localized`
- 📦 Swift Package Manager compatible

---

## 📦 Installation

### Using Swift Package Manager

In Xcode:

> **File > Add Packages...**

Paste this repo URL:

```text
https://github.com/AldrinBahle/AldrinDevKit.git
```

Select your version rule (we recommend: `from: 1.0.0`) and click **Add Package**.

---

## 🧪 Usage Examples

### 🔤 String

```swift
"  Hello  ".trimmed                // "Hello"
"swiftui".capitalizedFirst        // "Swiftui"
"test@example.com".isValidEmail   // true
"2025-03-28".toDate()             // Date?
"{\"name\": \"Dev\"}".toJSONDictionary
```

### 🎨 Color

```swift
Color("#1ABC9C")                  // hex initializer
Color.random                      // random color
Color.textPrimary                 // asset color
```

### 🔠 Font

```swift
Text("Title").font(.titleBold)
Text("Subtitle").font(.dynamic(.subheadline, weight: .medium))
Text("Custom").font(.customFont("AvenirNext-Bold", size: 16))
```

---

## 📂 Modules

| Category | Description |
|---------|-------------|
| `String+*` | Trim, validate, convert, localize, slugify, parse JSON |
| `Color+Extensions` | Asset-based colors, hex, random, brightness |
| `Font+Extensions` | Title, subtitle, body fonts with scaling |

---

## 🛠 Roadmap

- [ ] ViewModifiers (padding, rounded, etc.)
- [ ] Custom buttons / form styles
- [ ] Date extensions
- [ ] More testing utilities

---

## 🤝 Contributing

Pull requests are welcome! Open an issue to suggest new features or improvements.

---

## 📜 License

Licensed under the **MIT License**.  
Free to use, modify, and distribute.

---

Made with ❤️ by [Aldrin Gama](https://github.com/AldrinBahle)
