//
// InternalComplianceDecisionBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalComplianceDecisionBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case watchlists = "person_watchlists"
        case verification = "person_verification"
        case authentication = "person_authentication"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case decided = "decided"
        case expired = "expired"
        case invalidated = "invalidated"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum OutcomeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case passed = "passed"
        case failed = "failed"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum FailureCodesBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case requestedFailure = "requested_failure"
        case idCheckFailure = "id_check_failure"
        case databaseCheckFailure = "database_check_failure"
        case selfieFailure = "selfie_failure"
        case pepCheckFailure = "pep_check_failure"
        case watchlistCheckFailure = "watchlist_check_failure"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the compliance decision. */
    public var guid: String?
    /** The compliance decision's type */
    public var type: TypeBankModel?
    /** ISO8601 datetime the exchange settlement payment order was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the exchange settlement payment order was created at. */
    public var decidedAt: Date?
    /** The identifier of the identity verification that corresponds to this decision. */
    public var identityVerificationGuid: String?
    /** The state of the compliance decision. */
    public var state: StateBankModel?
    /** The outcome of the verification process. */
    public var outcome: OutcomeBankModel?
    /** The reason codes explaining the outcome. */
    public var failureCodes: [FailureCodesBankModel]?

    public init(guid: String? = nil, type: TypeBankModel? = nil, createdAt: Date? = nil, decidedAt: Date? = nil, identityVerificationGuid: String? = nil, state: StateBankModel? = nil, outcome: OutcomeBankModel? = nil, failureCodes: [FailureCodesBankModel]? = nil) {
        self.guid = guid
        self.type = type
        self.createdAt = createdAt
        self.decidedAt = decidedAt
        self.identityVerificationGuid = identityVerificationGuid
        self.state = state
        self.outcome = outcome
        self.failureCodes = failureCodes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case createdAt = "created_at"
        case decidedAt = "decided_at"
        case identityVerificationGuid = "identity_verification_guid"
        case state
        case outcome
        case failureCodes = "failure_codes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(decidedAt, forKey: .decidedAt)
        try container.encodeIfPresent(identityVerificationGuid, forKey: .identityVerificationGuid)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(outcome, forKey: .outcome)
        try container.encodeIfPresent(failureCodes, forKey: .failureCodes)
    }
}

