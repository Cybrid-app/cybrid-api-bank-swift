//
// PostInternalExternalBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostInternalExternalBankAccountBankModel: NSObject, Codable, JSONEncodable {

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case zumRailsUser = "zum_rails_user"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The name of the account. */
    public var name: String
    /** The account type */
    public var accountKind: AccountKindBankModel
    /** The id of the account at the third-party provider. */
    public var providerId: String
    /** The exchange identifier. */
    public var exchangeGuid: String?
    /** The bank identifier. */
    public var bankGuid: String?
    /** The asset code. */
    public var asset: String

    public init(name: String, accountKind: AccountKindBankModel, providerId: String, exchangeGuid: String? = nil, bankGuid: String? = nil, asset: String) {
        self.name = name
        self.accountKind = accountKind
        self.providerId = providerId
        self.exchangeGuid = exchangeGuid
        self.bankGuid = bankGuid
        self.asset = asset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case accountKind = "account_kind"
        case providerId = "provider_id"
        case exchangeGuid = "exchange_guid"
        case bankGuid = "bank_guid"
        case asset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(accountKind, forKey: .accountKind)
        try container.encode(providerId, forKey: .providerId)
        try container.encodeIfPresent(exchangeGuid, forKey: .exchangeGuid)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encode(asset, forKey: .asset)
    }
}

