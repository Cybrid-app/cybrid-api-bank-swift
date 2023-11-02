//
// ExternalBankAccountBalancesBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Balance information for the account. */
public struct ExternalBankAccountBalancesBankModel: Codable, JSONEncodable, Hashable {

    /** The available balance in the account. */
    public var availableBalance: Int?
    /** The current balance in the account including pending transactions. */
    public var currentBalance: Int?

    public init(availableBalance: Int? = nil, currentBalance: Int? = nil) {
        self.availableBalance = availableBalance
        self.currentBalance = currentBalance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availableBalance = "available_balance"
        case currentBalance = "current_balance"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availableBalance, forKey: .availableBalance)
        try container.encodeIfPresent(currentBalance, forKey: .currentBalance)
    }
}
