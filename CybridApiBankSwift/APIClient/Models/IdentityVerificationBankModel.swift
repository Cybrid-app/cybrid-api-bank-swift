//
// IdentityVerificationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityVerificationBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the identity verification. */
    public var guid: String?
    /** The identity verification type; one of kyc, bank_account, or counterparty. */
    public var type: String?
    /** The identity verification method; one of business_registration, id_and_selfie, tax_id_and_selfie, attested, attested_ownership, account_ownership, plaid_identity_match, document_submission, or watchlists. */
    public var method: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The identity verification's identifier. */
    public var customerGuid: String?
    /** The identity verification's identifier. */
    public var counterpartyGuid: String?
    /** The identity verification's identifier. */
    public var externalBankAccountGuid: String?
    /** The identity verification state; one of storing, waiting, pending, reviewing, expired, or completed. */
    public var state: String?
    /** The identity verification outcome; one of passed or failed. */
    public var outcome: String?
    /** The reason codes explaining the outcome. */
    public var failureCodes: [String]?
    /** The compliance decisions associated with the identity verification. */
    public var complianceDecisions: [ComplianceDecisionBankModel]?

    public init(guid: String? = nil, type: String? = nil, method: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, customerGuid: String? = nil, counterpartyGuid: String? = nil, externalBankAccountGuid: String? = nil, state: String? = nil, outcome: String? = nil, failureCodes: [String]? = nil, complianceDecisions: [ComplianceDecisionBankModel]? = nil) {
        self.guid = guid
        self.type = type
        self.method = method
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.customerGuid = customerGuid
        self.counterpartyGuid = counterpartyGuid
        self.externalBankAccountGuid = externalBankAccountGuid
        self.state = state
        self.outcome = outcome
        self.failureCodes = failureCodes
        self.complianceDecisions = complianceDecisions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case method
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case customerGuid = "customer_guid"
        case counterpartyGuid = "counterparty_guid"
        case externalBankAccountGuid = "external_bank_account_guid"
        case state
        case outcome
        case failureCodes = "failure_codes"
        case complianceDecisions = "compliance_decisions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(counterpartyGuid, forKey: .counterpartyGuid)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(outcome, forKey: .outcome)
        try container.encodeIfPresent(failureCodes, forKey: .failureCodes)
        try container.encodeIfPresent(complianceDecisions, forKey: .complianceDecisions)
    }
}

