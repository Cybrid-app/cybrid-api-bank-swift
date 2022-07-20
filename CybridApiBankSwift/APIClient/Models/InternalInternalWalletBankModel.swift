//
// InternalInternalWalletBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalInternalWalletBankModel: Codable, JSONEncodable, Hashable {

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case fireblocksVault = "fireblocks_vault"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** The name of the account. */
    public var name: String?
    /** The asset code. */
    public var assetCode: String?
    /** The type of account. */
    public var accountKind: AccountKindBankModel?
    /** The environment that the exchange is operating in. */
    public var environment: EnvironmentBankModel?
    /** The bank identifier associated with the account. */
    public var systemAccountGuid: String?
    /** ISO8601 datetime the exchange was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, name: String? = nil, assetCode: String? = nil, accountKind: AccountKindBankModel? = nil, environment: EnvironmentBankModel? = nil, systemAccountGuid: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.name = name
        self.assetCode = assetCode
        self.accountKind = accountKind
        self.environment = environment
        self.systemAccountGuid = systemAccountGuid
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case assetCode = "asset_code"
        case accountKind = "account_kind"
        case environment
        case systemAccountGuid = "system_account_guid"
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(assetCode, forKey: .assetCode)
        try container.encodeIfPresent(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(systemAccountGuid, forKey: .systemAccountGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

