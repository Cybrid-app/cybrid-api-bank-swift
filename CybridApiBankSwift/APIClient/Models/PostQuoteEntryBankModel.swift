//
// PostQuoteEntryBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for quote account creation. */
public struct PostQuoteEntryBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case externalWallet = "external_wallet"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of account */
    public var type: TypeBankModel
    /** The guid of the account */
    public var guid: String
    /** The amount to be received in base units of the currency: currency is \"asset\" for buy and \"counter_asset\" for sell for trade quotes. */
    public var receiveAmount: Int?
    /** The amount to be delivered in base units of the currency: currency is \"counter_asset\" for buy and \"asset\" for sell for trade quotes. */
    public var deliverAmount: Int?

    public init(type: TypeBankModel, guid: String, receiveAmount: Int? = nil, deliverAmount: Int? = nil) {
        self.type = type
        self.guid = guid
        self.receiveAmount = receiveAmount
        self.deliverAmount = deliverAmount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case guid
        case receiveAmount = "receive_amount"
        case deliverAmount = "deliver_amount"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(guid, forKey: .guid)
        try container.encodeIfPresent(receiveAmount, forKey: .receiveAmount)
        try container.encodeIfPresent(deliverAmount, forKey: .deliverAmount)
    }
}

