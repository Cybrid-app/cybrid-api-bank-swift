//
// InternalCybridAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalCybridAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case fee = "fee"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The account type. */
    public var type: TypeBankModel?
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** ISO8601 datetime the account was created at. */
    public var createdAt: Date?
    /** The asset code. */
    public var assetCode: String?
    /** The name of the account. */
    public var name: String?
    /** The environment the account is configured for. */
    public var environment: EnvironmentBankModel?

    public init(type: TypeBankModel? = nil, guid: String? = nil, createdAt: Date? = nil, assetCode: String? = nil, name: String? = nil, environment: EnvironmentBankModel? = nil) {
        self.type = type
        self.guid = guid
        self.createdAt = createdAt
        self.assetCode = assetCode
        self.name = name
        self.environment = environment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case guid
        case createdAt = "created_at"
        case assetCode = "asset_code"
        case name
        case environment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(assetCode, forKey: .assetCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(environment, forKey: .environment)
    }
}

