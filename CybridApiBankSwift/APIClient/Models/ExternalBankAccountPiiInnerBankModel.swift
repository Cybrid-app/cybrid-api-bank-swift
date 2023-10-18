//
// ExternalBankAccountPiiInnerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalBankAccountPiiInnerBankModel: Codable, JSONEncodable, Hashable {

    /** Array of names on the account */
    public var names: [String]?
    /** Array of addresses associated to the account */
    public var addresses: [ExternalBankAccountPiiInnerAddressesInnerBankModel]?
    /** Array of email addresses associated to the account */
    public var emailAddresses: [String]?
    /** Array of phone numbers associated to the account */
    public var phoneNumbers: [String]?

    public init(names: [String]? = nil, addresses: [ExternalBankAccountPiiInnerAddressesInnerBankModel]? = nil, emailAddresses: [String]? = nil, phoneNumbers: [String]? = nil) {
        self.names = names
        self.addresses = addresses
        self.emailAddresses = emailAddresses
        self.phoneNumbers = phoneNumbers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case names
        case addresses
        case emailAddresses = "email_addresses"
        case phoneNumbers = "phone_numbers"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(addresses, forKey: .addresses)
        try container.encodeIfPresent(emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
    }
}

