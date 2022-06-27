//
// AssetBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class AssetBankModel: NSObject, Codable, JSONEncodable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case fiat = "fiat"
        case crypto = "crypto"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The asset type. */
    public var type: TypeBankModel
    /** The unique code for the asset. */
    public var code: String
    /** The name of the asset. */
    public var name: String
    /** The currency symbol for the asset. */
    public var symbol: String
    /** The number of decimals for the default unit of the asset. */
    public var decimals: Int

    public init(type: TypeBankModel, code: String, name: String, symbol: String, decimals: Int) {
        self.type = type
        self.code = code
        self.name = name
        self.symbol = symbol
        self.decimals = decimals
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case code
        case name
        case symbol
        case decimals
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(code, forKey: .code)
        try container.encode(name, forKey: .name)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(decimals, forKey: .decimals)
    }
}

