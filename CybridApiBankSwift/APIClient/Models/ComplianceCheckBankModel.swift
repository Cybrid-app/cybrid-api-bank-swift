//
// ComplianceCheckBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ComplianceCheckBankModel: Codable, JSONEncodable, Hashable {

    /** The type of compliance check; one of business_watchlists, business_verification, business_tax_id_verification, person_attested, person_tax_id_attested, person_watchlists, person_verification, person_authentication, person_gov_id_verification, person_tax_id_verification, external_bank_account_verification, or external_bank_account_attested. */
    public var type: String
    /** The outcome of the compliance check; one of passed, failed, or inconclusive. */
    public var outcome: String?
    /** The reason codes explaining the outcome. */
    public var failureCodes: [String]?

    public init(type: String, outcome: String? = nil, failureCodes: [String]? = nil) {
        self.type = type
        self.outcome = outcome
        self.failureCodes = failureCodes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case outcome
        case failureCodes = "failure_codes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(outcome, forKey: .outcome)
        try container.encodeIfPresent(failureCodes, forKey: .failureCodes)
    }
}

