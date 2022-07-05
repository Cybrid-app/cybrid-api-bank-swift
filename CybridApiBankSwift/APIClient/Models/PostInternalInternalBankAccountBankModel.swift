//
// PostInternalInternalBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostInternalInternalBankAccountBankModel: NSObject, Codable, JSONEncodable {

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case zumRailsWalletId = "zum_rails_wallet_id"
        case zumRailsFundingSource = "zum_rails_funding_source"
        case modernTreasuryInternalAccount = "modern_treasury_internal_account"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The name of the account. */
    public var name: String
    /** The account type */
    public var accountKind: AccountKindBankModel
    /** The id of the account at the third-party provider. */
    public var providerId: String
    /** The bank identifier associated with the account. */
    public var systemAccountGuid: String

    public init(name: String, accountKind: AccountKindBankModel, providerId: String, systemAccountGuid: String) {
        self.name = name
        self.accountKind = accountKind
        self.providerId = providerId
        self.systemAccountGuid = systemAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case accountKind = "account_kind"
        case providerId = "provider_id"
        case systemAccountGuid = "system_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(accountKind, forKey: .accountKind)
        try container.encode(providerId, forKey: .providerId)
        try container.encode(systemAccountGuid, forKey: .systemAccountGuid)
    }
}

