import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var icd10Entries: [ICD10Entry] = DataManager.loadICD10Data(from: "icd10")
    @State private var selectedCode: String?
    
    var filteredEntries: [ICD10Entry] {
       if searchText.isEmpty {
           return icd10Entries
       } else {
            return icd10Entries.filter { $0.code.localizedCaseInsensitiveContains(searchText) || $0.display.localizedCaseInsensitiveContains(searchText) }
       }
   }
    
    var body: some View {
       NavigationView {
           VStack {
                SearchBar(text: $searchText)
               List(filteredEntries) { entry in
                   VStack(alignment: .leading) {
                        Text(entry.code).font(.headline)
                        Text(entry.display).font(.subheadline)
                       Text(entry.version).font(.caption)
                    }
                   .onTapGesture {
                       self.selectedCode = entry.code
                    }
               }
                if let selected = selectedCode {
                   Text("Selected code: \(selected)")
                }
               Spacer()
           }
            .navigationTitle("ICD-10-CM Finder")
       }
   }
}
