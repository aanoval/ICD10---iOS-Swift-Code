//
//  DataManager.swift
//  icd10
//
//  Created by sewabareng on 29/01/25.
//

import Foundation

class DataManager {
    static func loadICD10Data(from fileName: String = "icd10") -> [ICD10Entry] {
        guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            fatalError("Could not find the JSON file.")
        }

        do {
            let data = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            let entries = try decoder.decode([ICD10Entry].self, from: data)
            return entries
        } catch {
            fatalError("Failed to decode JSON: \(error)")
        }
    }
}
