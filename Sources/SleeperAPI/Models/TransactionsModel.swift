import Foundation

public enum TransactionType: String, Codable {
    case trade
    case waiver
    case freeAgent = "free_agent"
}

public struct TransactionsModel: Codable {
    let type: TransactionType
    let transactionId: String
    let statusUpdated: Double
    let status: String
    let rosterIds: [String]
    let week: Int
    let drops: [String: Int]?
    let draftPicks: [TradedPicksModel]
    let creator: String
    let created: Double
    let consenterIds: [String]
    let addds: [String: Int]?
    let waiverBudget: [WaiverBudgetModel]?
    
    enum CodingKeys: String, CodingKey {
        case type
        case transactionId = "transaction_id"
        case statusUpdated = "status_updated"
        case status
        case rosterIds = "roster_ids"
        case week = "leg"
        case drops
        case draftPicks = "draft_picks"
        case creator
        case created
        case consenterIds = "consenter_ids"
        case addds
        case waiverBudget = "waiver_budget"
    }
}

public struct WaiverBudgetModel: Codable {
    let sender: Int
    let receiver: Int
    let amount: Int
}
