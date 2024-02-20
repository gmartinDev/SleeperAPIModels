public enum PlayerStatus: String, Codable {
    case active = "Active"
    case inactive = "Inactive"
    case ir = "Injured Reserve"
    case nfi = "Non Football Injury"
    case pup = "Physically Unable to Perform"
    case practiceSquad = "Practice Squad"
}
