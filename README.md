# 🩺 ICD-10-CM Finder

[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017+-blue.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/aanoval/ICD10---iOS-Swift-Code)](https://github.com/aanoval/ICD10---iOS-Swift-Code/releases)

**ICD-10-CM Finder** is a SwiftUI-based iOS application designed to assist medical professionals, students, and researchers in searching and exploring ICD-10-CM (International Classification of Diseases, 10th Revision, Clinical Modification) codes. With a modern interface, real-time search, and offline data access, this app simplifies finding diagnosis codes and their descriptions.

<p align="center">
  <img src="https://via.placeholder.com/300x600.png?text=ICD-10-CM+Finder+Screenshot" alt="ICD-10-CM Finder Screenshot" width="200"/>
</p>

## ✨ Features

- **🔍 Real-Time Search**: Filter ICD-10-CM codes and descriptions instantly using a responsive search bar.
- **📋 Detailed Entries**: View code, description, and version for each ICD-10-CM entry.
- **👆 Code Selection**: Tap to select a code, with the selected code displayed prominently.
- **📴 Offline Access**: Data stored locally in `icd10.json` ensures functionality without an internet connection.
- **🎨 Sleek UI**: Built with SwiftUI for a native, intuitive iOS experience.
- **⚡ Lightweight**: Minimal dependencies for fast performance.

## 🚀 Getting Started

### Prerequisites

- **Xcode**: Version 15.0 or later
- **iOS**: Version 17.0 or later
- **Swift**: Version 5.9 or later
- **macOS**: Ventura 13.0 or later

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/aanoval/ICD10---iOS-Swift-Code.git
   cd ICD10---iOS-Swift-Code
   ```

2. **Open in Xcode**:
   - Double-click `icd10.xcodeproj` to open the project in Xcode.
   - Alternatively, run:
     ```bash
     open icd10.xcodeproj
     ```

3. **Build and Run**:
   - Select an iOS simulator (e.g., iPhone 15 Pro) or a connected device.
   - Press `Cmd + R` to build and run the app.
   - The app will launch, displaying the ICD-10-CM code list.

4. **Verify Data**:
   - Ensure `icd10.json` is included in the project root to load the ICD-10-CM dataset.

## 📂 Project Structure

```
ICD10---iOS-Swift-Code/
├── icd10.xcodeproj              # Xcode project file
├── Assets.xcassets              # App icons and color assets
│   ├── AccentColor.colorset
│   └── AppIcon.appiconset
├── Preview Content              # Preview assets for SwiftUI canvas
│   └── Preview Assets.xcassets
├── ContentView.swift            # Main UI with search bar and list
├── DataManager.swift            # Logic for loading icd10.json
├── Model.swift                  # ICD10Entry data model
├── SearchBar.swift              # Reusable search bar component
├── icd10.json                   # ICD-10-CM dataset
├── icd10App.swift               # App entry point
└── .DS_Store                    # macOS metadata (can be ignored)
```

## 🛠️ How It Works

### Core Components

- **ContentView.swift**: The primary view, featuring:
  - A `SearchBar` for filtering codes and descriptions.
  - A `List` of `ICD10Entry` items showing code, display, and version.
  - Tap gestures to select a code, displayed as "Selected code: [code]".
- **DataManager.swift**: Handles loading and parsing of `icd10.json` into `[ICD10Entry]`.
- **Model.swift**: Defines the `ICD10Entry` struct for code, display, and version.
- **SearchBar.swift**: A reusable SwiftUI component for text input.
- **icd10App.swift**: The app’s entry point, initializing the SwiftUI app.

### Data Flow

1. At launch, `DataManager.loadICD10Data(from: "icd10")` reads `icd10.json`.
2. The parsed `[ICD10Entry]` is stored in a `@State` variable.
3. `filteredEntries` filters the list based on `searchText`, matching code or display fields case-insensitively.
4. The UI updates dynamically as the user types in the search bar.

### Example ICD10Entry

```swift
struct ICD10Entry: Codable, Identifiable {
    let id = UUID()
    let code: String    // e.g., "A00.0"
    let display: String // e.g., "Cholera due to Vibrio cholerae 01, biovar cholerae"
    let version: String // e.g., "2023"
}
```

## 📖 Usage

1. **Launch the App**:
   - Open the app on a simulator or iOS device.
   - The main screen shows all ICD-10-CM codes in a scrollable list.

2. **Search Codes**:
   - Type in the search bar (e.g., "A00" or "Cholera") to filter entries.
   - Results update in real-time, showing matching codes and descriptions.

3. **Select a Code**:
   - Tap an entry to select it.
   - The selected code appears at the bottom (e.g., "Selected code: A00.0").

4. **Work Offline**:
   - The app functions without an internet connection, as all data is stored locally.

## 🤝 Contributing

Contributions are welcome to improve ICD-10-CM Finder! To contribute:

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature
   ```
5. Open a Pull Request.

Please review our [Contributing Guidelines](CONTRIBUTING.md) for more details.

## 🐞 Reporting Issues

Report bugs or suggest features by opening an issue on the [GitHub Issues page](https://github.com/aanoval/ICD10---iOS-Swift-Code/issues).

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 📬 Contact

For support or inquiries, reach out to:
- **Email**: [support@aibiz.id](mailto:support@aibiz.id)
- **WhatsApp**: [+62 877-8761-5432](https://wa.me/6287787615432)
- **Website**: [https://aibiz.id](https://aibiz.id)
- **Address**: Alday Group, DI Yogyakarta ([View on Google Maps](https://maps.app.goo.gl/AToxLtQmpTf9NRGt5))

## 🙌 Credits

- **Developer**: Aa Nval (GitHub: [aanoval](https://github.com/aanoval))
- **Organization**: Aibiz ID
- **Powered By**: SwiftUI, Xcode, JSON

Thank you for using ICD-10-CM Finder! We hope this tool simplifies your work with ICD-10-CM codes.

---

⭐ **Star this repository** if you find it useful!  
🌐 Visit [https://aibiz.id](https://aibiz.id) for more projects.
