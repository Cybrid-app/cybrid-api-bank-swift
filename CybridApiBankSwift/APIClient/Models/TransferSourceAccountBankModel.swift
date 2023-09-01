//
// TransferSourceAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The source account in the transfer. Can be omitted for crypto deposits. */
public struct TransferSourceAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case trading = "trading"
        case fiat = "fiat"
        case externalBankAccount = "external_bank_account"
        case externalWallet = "external_wallet"
        case oneTimeAddress = "one_time_address"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the transfer account. */
    public var guid: String?
    /** The type of transfer account. */
    public var type: TypeBankModel?

    public init(guid: String? = nil, type: TypeBankModel? = nil) {
        self.guid = guid
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

