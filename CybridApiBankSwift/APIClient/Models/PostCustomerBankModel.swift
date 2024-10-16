//
// PostCustomerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for customer creation. */
public struct PostCustomerBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case business = "business"
        case individual = "individual"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of customer. */
    public var type: TypeBankModel
    public var name: PostCustomerNameBankModel?
    public var address: PostCustomerAddressBankModel?
    /** The customer's date of birth. Optional when type is individual. */
    public var dateOfBirth: Date?
    /** The customer's phone number. Optional when type is individual. */
    public var phoneNumber: String?
    /** The customer's email address. Optional when type is individual. */
    public var emailAddress: String?
    /** The customer's identification numbers. Optional when type is individual. */
    public var identificationNumbers: [PostIdentificationNumberBankModel]?
    /** The labels associated with the customer. */
    public var labels: [String]?

    public init(type: TypeBankModel, name: PostCustomerNameBankModel? = nil, address: PostCustomerAddressBankModel? = nil, dateOfBirth: Date? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, identificationNumbers: [PostIdentificationNumberBankModel]? = nil, labels: [String]? = nil) {
        self.type = type
        self.name = name
        self.address = address
        self.dateOfBirth = dateOfBirth
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
        self.identificationNumbers = identificationNumbers
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case address
        case dateOfBirth = "date_of_birth"
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
        case identificationNumbers = "identification_numbers"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(identificationNumbers, forKey: .identificationNumbers)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

