//
// CustomerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CustomerBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case individual = "individual"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the customer. */
    public var guid: String?
    /** The customer's type. */
    public var type: TypeBankModel?
    /** ISO8601 datetime the customer was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, type: TypeBankModel? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.type = type
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

