//
// PostInternalInternalTransferBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostInternalInternalTransferBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case internalBankRebalance = "internal_bank_rebalance"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of internal transfer. */
    public var type: TypeBankModel
    /** The environment to transfer funds in. */
    public var environment: EnvironmentBankModel
    /** The principal asset code. */
    public var principalAsset: String
    /** The transfer amount in base units of the principal asset */
    public var principalAmount: Int
    /** The source account guid. */
    public var principalSourceAccountGuid: String?
    /** The destination account guid. */
    public var principalDestinationAccountGuid: String?

    public init(type: TypeBankModel, environment: EnvironmentBankModel, principalAsset: String, principalAmount: Int, principalSourceAccountGuid: String?, principalDestinationAccountGuid: String?) {
        self.type = type
        self.environment = environment
        self.principalAsset = principalAsset
        self.principalAmount = principalAmount
        self.principalSourceAccountGuid = principalSourceAccountGuid
        self.principalDestinationAccountGuid = principalDestinationAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case environment
        case principalAsset = "principal_asset"
        case principalAmount = "principal_amount"
        case principalSourceAccountGuid = "principal_source_account_guid"
        case principalDestinationAccountGuid = "principal_destination_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(environment, forKey: .environment)
        try container.encode(principalAsset, forKey: .principalAsset)
        try container.encode(principalAmount, forKey: .principalAmount)
        try container.encode(principalSourceAccountGuid, forKey: .principalSourceAccountGuid)
        try container.encode(principalDestinationAccountGuid, forKey: .principalDestinationAccountGuid)
    }
}

