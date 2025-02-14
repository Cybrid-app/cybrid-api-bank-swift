//
// PostAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for account creation. */
public struct PostAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case trading = "trading"
        case fiat = "fiat"
        case invoiceOperations = "invoice_operations"
        case storage = "storage"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The account type. */
    public var type: TypeBankModel
    /** TThe customer identifier associated with the account. */
    public var customerGuid: String?
    /** The asset code. */
    public var asset: String
    /** The name of the account. */
    public var name: String
    /** The labels associated with the account. */
    public var labels: [String]?

    public init(type: TypeBankModel, customerGuid: String? = nil, asset: String, name: String, labels: [String]? = nil) {
        self.type = type
        self.customerGuid = customerGuid
        self.asset = asset
        self.name = name
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case customerGuid = "customer_guid"
        case asset
        case name
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encode(asset, forKey: .asset)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

