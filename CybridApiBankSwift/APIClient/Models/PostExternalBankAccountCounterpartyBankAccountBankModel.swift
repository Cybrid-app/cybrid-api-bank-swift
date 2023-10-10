//
// PostExternalBankAccountCounterpartyBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The counterparty&#39;s name on the account. */
public struct PostExternalBankAccountCounterpartyBankAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum RoutingNumberTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case cpa = "CPA"
        case aba = "ABA"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of routing number. */
    public var routingNumberType: RoutingNumberTypeBankModel
    /** The routing number. */
    public var routingNumber: String
    /** The account number. */
    public var accountNumber: String

    public init(routingNumberType: RoutingNumberTypeBankModel, routingNumber: String, accountNumber: String) {
        self.routingNumberType = routingNumberType
        self.routingNumber = routingNumber
        self.accountNumber = accountNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case routingNumberType = "routing_number_type"
        case routingNumber = "routing_number"
        case accountNumber = "account_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(routingNumberType, forKey: .routingNumberType)
        try container.encode(routingNumber, forKey: .routingNumber)
        try container.encode(accountNumber, forKey: .accountNumber)
    }
}
