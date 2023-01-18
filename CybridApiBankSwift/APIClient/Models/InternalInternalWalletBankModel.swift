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
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case created = "created"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** The name of the account. */
    public var name: String?
    /** The asset code. */
    public var asset: String?
    /** The type of account. */
    public var accountKind: AccountKindBankModel?
    /** The environment that the exchange is operating in. */
    public var environment: EnvironmentBankModel?
    /** ISO8601 datetime the exchange was created at. */
    public var createdAt: Date?
    /** The state of the verification process. */
    public var state: StateBankModel?

    public init(guid: String? = nil, name: String? = nil, asset: String? = nil, accountKind: AccountKindBankModel? = nil, environment: EnvironmentBankModel? = nil, createdAt: Date? = nil, state: StateBankModel? = nil) {
        self.guid = guid
        self.name = name
        self.asset = asset
        self.accountKind = accountKind
        self.environment = environment
        self.createdAt = createdAt
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case asset
        case accountKind = "account_kind"
        case environment
        case createdAt = "created_at"
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

