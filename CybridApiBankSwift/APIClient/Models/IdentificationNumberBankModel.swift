//
// IdentificationNumberBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentificationNumberBankModel: Codable, JSONEncodable, Hashable {

    /** The source of the identification number; one of drivers_license, passport, passport_card, residence_card, social_security_number, tax_identification_number, or identification_card. */
    public var type: String
    /** The ISO 3166 country 2-Alpha country code of the identification number issuer. */
    public var issuingCountryCode: String
    /** The identification number. */
    public var identificationNumber: String

    public init(type: String, issuingCountryCode: String, identificationNumber: String) {
        self.type = type
        self.issuingCountryCode = issuingCountryCode
        self.identificationNumber = identificationNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case issuingCountryCode = "issuing_country_code"
        case identificationNumber = "identification_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(issuingCountryCode, forKey: .issuingCountryCode)
        try container.encode(identificationNumber, forKey: .identificationNumber)
    }
}

