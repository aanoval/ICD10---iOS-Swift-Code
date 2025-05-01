import Foundation

struct ICD10Entry: Codable, Identifiable {
    let id = UUID()
    let code: String
    let display: String
    let version: String

    enum CodingKeys: String, CodingKey {
        case code = "CODE"
        case display = "DISPLAY"
        case version = "VERSION"
    }
}
