//
// PostCounterpartyBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for counterparty creation. */
public struct PostCounterpartyBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case business = "business"
        case individual = "individual"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The counterparty's type. */
    public var type: TypeBankModel
    /** The owning customer's identifier. */
    public var customerGuid: String?
    public var address: PostCounterpartyAddressBankModel
    public var name: PostCounterpartyNameBankModel?
    /** The aliases of the counterparty. Optional when type is business. */
    public var aliases: [PostCounterpartyAliasesInnerBankModel]?
    /** The counterparty's date of birth. Optional when type is individual. */
    public var dateOfBirth: Date?
    /** The labels associated with the counterparty. */
    public var labels: [String]?

    public init(type: TypeBankModel, customerGuid: String? = nil, address: PostCounterpartyAddressBankModel, name: PostCounterpartyNameBankModel? = nil, aliases: [PostCounterpartyAliasesInnerBankModel]? = nil, dateOfBirth: Date? = nil, labels: [String]? = nil) {
        self.type = type
        self.customerGuid = customerGuid
        self.address = address
        self.name = name
        self.aliases = aliases
        self.dateOfBirth = dateOfBirth
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case customerGuid = "customer_guid"
        case address
        case name
        case aliases
        case dateOfBirth = "date_of_birth"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encode(address, forKey: .address)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(aliases, forKey: .aliases)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

