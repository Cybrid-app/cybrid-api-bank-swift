//
// PostInternalExchangeAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostInternalExchangeAccountBankModel: NSObject, Codable, JSONEncodable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case fiat = "fiat"
        case crypto = "crypto"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The exchange account type. */
    public var type: TypeBankModel
    /** The exchange identifier. */
    public var exchangeGuid: String
    /** The asset code. */
    public var asset: String

    public init(type: TypeBankModel, exchangeGuid: String, asset: String) {
        self.type = type
        self.exchangeGuid = exchangeGuid
        self.asset = asset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case exchangeGuid = "exchange_guid"
        case asset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(exchangeGuid, forKey: .exchangeGuid)
        try container.encode(asset, forKey: .asset)
    }
}

