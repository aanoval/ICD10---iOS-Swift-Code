🩺 ICD-10-CM Finder

ICD-10-CM Finder is a SwiftUI-based iOS application designed to help medical professionals and students quickly search and explore ICD-10-CM (International Classification of Diseases, 10th Revision, Clinical Modification) codes. With a clean interface, powerful search functionality, and offline data access, this app makes it easy to find diagnosis codes and their descriptions.

  


✨ Features

🔍 Instant Search: Filter ICD-10-CM codes and descriptions in real-time using a responsive search bar.
📋 Code Details: View code, description, and version for each ICD-10-CM entry.
👆 Interactive Selection: Tap a code to highlight it as selected, with immediate feedback.
📴 Offline Access: All data is stored locally in icd10.json, ensuring functionality without an internet connection.
🎨 Modern UI: Built with SwiftUI for a sleek, native iOS experience.
⚡ Lightweight: Optimized for performance with minimal dependencies.

🚀 Getting Started
Prerequisites

Xcode: Version 15.0 or later
iOS: Version 17.0 or later
Swift: Version 5.9 or later
MacOS: Ventura 13.0 or later

Installation

Clone the Repository:
git clone https://github.com/yourusername/icd10-finder.git
cd icd10-finder


Open in Xcode:

Double-click icd10.xcodeproj to open the project in Xcode.
Alternatively, run:open icd10.xcodeproj




Build and Run:

Select an iOS simulator or connected device in Xcode.
Press Cmd + R to build and run the app.
The app will launch, displaying the ICD-10-CM code list.


Explore the Data:

The icd10.json file in the project root contains the ICD-10-CM dataset.
Ensure it remains in the project to load data correctly.



📂 Project Structure
icd10/
├── icd10.xcodeproj              # Xcode project file
├── Assets.xcassets              # App icons and color assets
│   ├── AccentColor.colorset
│   └── AppIcon.appiconset
├── Preview Content              # Preview assets for SwiftUI canvas
│   └── Preview Assets.xcassets
├── ContentView.swift            # Main UI with search and list
├── DataManager.swift            # Logic for loading icd10.json
├── Model.swift                  # ICD10Entry data model
├── SearchBar.swift              # Reusable search bar component
├── icd10.json                   # ICD-10-CM dataset
├── icd10App.swift               # App entry point
└── .DS_Store                    # macOS metadata (can be ignored)

🛠️ How It Works
Core Components

ContentView.swift: The main view, featuring:
A SearchBar for filtering codes and descriptions.
A List displaying ICD10Entry items (code, display, version).
Tap gestures to select a code, shown at the bottom.


DataManager.swift: Loads and parses icd10.json into [ICD10Entry].
Model.swift: Defines the ICD10Entry struct for code, display, and version.
SearchBar.swift: A reusable SwiftUI component for text input.
icd10App.swift: The app’s entry point, initializing the SwiftUI app.

Data Flow

On launch, DataManager.loadICD10Data(from: "icd10") reads icd10.json.
The parsed [ICD10Entry] is stored in @State private var icd10Entries.
filteredEntries computes a filtered list based on searchText, matching code or display fields.
The UI updates dynamically as the user types in the search bar.

Example ICD10Entry
struct ICD10Entry: Codable, Identifiable {
    let id = UUID()
    let code: String    // e.g., "A00.0"
    let display: String // e.g., "Cholera due to Vibrio cholerae 01, biovar cholerae"
    let version: String // e.g., "2023"
}

📖 Usage

Launch the App:

Open the app on a simulator or iOS device.
The main screen displays all ICD-10-CM codes.


Search for Codes:

Type in the search bar to filter by code (e.g., "A00") or description (e.g., "Cholera").
Results update instantly, showing matching entries.


Select a Code:

Tap an entry to select it.
The selected code appears at the bottom (e.g., "Selected code: A00.0").


Explore Offline:

All data is local, so the app works without Wi-Fi or cellular data.



🤝 Contributing
We welcome contributions to enhance ICD-10-CM Finder! To contribute:

Fork the repository.
Create a feature branch:git checkout -b feature/your-feature


Commit your changes:git commit -m "Add your feature"


Push to the branch:git push origin feature/your-feature


Open a Pull Request.

Please read our Contributing Guidelines for more details.
🐞 Reporting Issues
Found a bug or have a feature request? Open an issue on the GitHub Issues page.
📜 License
This project is licensed under the MIT License. See the LICENSE file for details.
📬 Contact
For questions or support, reach out to:

Email: your.email@example.com
GitHub: yourusername

🙌 Acknowledgments

SwiftUI: For a modern, declarative UI framework.
Apple Developer Community: For excellent documentation and resources.
ICD-10-CM Data: Sourced from publicly available datasets (ensure compliance with data usage terms).


⭐ Star this repository if you find it useful!🐦 Follow us on Twitter for updates.🌐 Visit yourwebsite.com for more projects.
