//
// IdentityVerificationWithDetailsBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityVerificationWithDetailsBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the identity verification. */
    public var guid: String?
    /** The identity verification's identifier. */
    public var customerGuid: String?
    /** The identity verification type; one of kyc or bank_account. */
    public var type: String?
    /** The identity verification method; one of business_registration, id_and_selfie, tax_id_and_selfie, attested, plaid_identity_match, or document_submission. */
    public var method: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The identity verification state; one of storing, waiting, expired, or completed. */
    public var state: String?
    /** The identity verification outcome; one of passed or failed. */
    public var outcome: String?
    /** The reason codes explaining the outcome. */
    public var failureCodes: [String]?
    /** The checks associated with the identity verification. */
    public var verificationChecks: [VerificationCheckBankModel]?
    /** The Persona identifier of the backing inquiry. */
    public var personaInquiryId: String?
    /** The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. */
    public var personaState: String?
    /** The external bank account's identifier. */
    public var externalBankAccountGuid: String?

    public init(guid: String? = nil, customerGuid: String? = nil, type: String? = nil, method: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, state: String? = nil, outcome: String? = nil, failureCodes: [String]? = nil, verificationChecks: [VerificationCheckBankModel]? = nil, personaInquiryId: String? = nil, personaState: String? = nil, externalBankAccountGuid: String? = nil) {
        self.guid = guid
        self.customerGuid = customerGuid
        self.type = type
        self.method = method
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.state = state
        self.outcome = outcome
        self.failureCodes = failureCodes
        self.verificationChecks = verificationChecks
        self.personaInquiryId = personaInquiryId
        self.personaState = personaState
        self.externalBankAccountGuid = externalBankAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case customerGuid = "customer_guid"
        case type
        case method
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case state
        case outcome
        case failureCodes = "failure_codes"
        case verificationChecks = "verification_checks"
        case personaInquiryId = "persona_inquiry_id"
        case personaState = "persona_state"
        case externalBankAccountGuid = "external_bank_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(outcome, forKey: .outcome)
        try container.encodeIfPresent(failureCodes, forKey: .failureCodes)
        try container.encodeIfPresent(verificationChecks, forKey: .verificationChecks)
        try container.encodeIfPresent(personaInquiryId, forKey: .personaInquiryId)
        try container.encodeIfPresent(personaState, forKey: .personaState)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
    }
}

