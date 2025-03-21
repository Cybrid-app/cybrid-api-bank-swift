//
// PostFeeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for fee creation. */
public struct PostFeeBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case spread = "spread"
        case fixed = "fixed"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The fee's type */
    public var type: TypeBankModel
    /** The percentage amount, in basis points, to apply when charging a fee. Required when type is spread. */
    public var spreadFee: Int?
    /** The fixed amount to apply when charging a fee; for trades, the fiat asset is used. Required when type is fixed. */
    public var fixedFee: Int?

    public init(type: TypeBankModel, spreadFee: Int? = nil, fixedFee: Int? = nil) {
        self.type = type
        self.spreadFee = spreadFee
        self.fixedFee = fixedFee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case spreadFee = "spread_fee"
        case fixedFee = "fixed_fee"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(spreadFee, forKey: .spreadFee)
        try container.encodeIfPresent(fixedFee, forKey: .fixedFee)
    }
}

