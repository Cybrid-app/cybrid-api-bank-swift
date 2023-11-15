//
// DepositBankAccountAccountDetailsInnerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DepositBankAccountAccountDetailsInnerBankModel: Codable, JSONEncodable, Hashable {

    /** The account number. */
    public var accountNumber: String

    public init(accountNumber: String) {
        self.accountNumber = accountNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber = "account_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountNumber, forKey: .accountNumber)
    }
}

