//
// DepositBankAccountCounterpartyAddressBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The counterparty&#39;s address on the account. */
public struct DepositBankAccountCounterpartyAddressBankModel: Codable, JSONEncodable, Hashable {

    /** The first line of the address. */
    public var street: String
    /** The optional second line of the address. */
    public var street2: String?
    /** The city of the address. */
    public var city: String
    /** The ISO 3166-2 subdivision code of the address; not used by all countries. */
    public var subdivision: String?
    /** The postal/post/zip code of the address; not used by all countries. */
    public var postalCode: String?
    /** The ISO 3166 country 2-Alpha country code of the address. */
    public var countryCode: String

    public init(street: String, street2: String? = nil, city: String, subdivision: String? = nil, postalCode: String? = nil, countryCode: String) {
        self.street = street
        self.street2 = street2
        self.city = city
        self.subdivision = subdivision
        self.postalCode = postalCode
        self.countryCode = countryCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case street2
        case city
        case subdivision
        case postalCode = "postal_code"
        case countryCode = "country_code"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(street, forKey: .street)
        try container.encodeIfPresent(street2, forKey: .street2)
        try container.encode(city, forKey: .city)
        try container.encodeIfPresent(subdivision, forKey: .subdivision)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encode(countryCode, forKey: .countryCode)
    }
}

