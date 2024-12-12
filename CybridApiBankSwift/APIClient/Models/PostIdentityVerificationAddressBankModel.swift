//
// PostIdentityVerificationAddressBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The customer&#39;s address. Required when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
public struct PostIdentityVerificationAddressBankModel: Codable, JSONEncodable, Hashable {

    /** The first line of the address. Required when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var street: String?
    /** The optional second line of the address. Optional when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var street2: String?
    /** The city of the address. Required when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var city: String?
    /** The ISO 3166-2 subdivision code of the address. Applicable only for countries that use subnational states, provinces, lands, oblasts or regions. Optional when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var subdivision: String?
    /** The postal, zip or post code of the address. Applicable only for countries that use postal, zip or post codes. Optional when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var postalCode: String?
    /** The ISO 3166 country 2-Alpha country code of the address. Required when type is kyc and method is attested or type is bank_account and method is attested_ownership. */
    public var countryCode: String?

    public init(street: String? = nil, street2: String? = nil, city: String? = nil, subdivision: String? = nil, postalCode: String? = nil, countryCode: String? = nil) {
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
        try container.encodeIfPresent(street, forKey: .street)
        try container.encodeIfPresent(street2, forKey: .street2)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(subdivision, forKey: .subdivision)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
    }
}

