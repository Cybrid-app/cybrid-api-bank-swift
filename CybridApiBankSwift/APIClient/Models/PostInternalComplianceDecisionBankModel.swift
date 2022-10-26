//
// PostInternalComplianceDecisionBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostInternalComplianceDecisionBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case watchlists = "person_watchlists"
        case verification = "person_verification"
        case authentication = "person_authentication"
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
    /** The compliance decision's type */
    public var type: TypeBankModel
    /** ISO8601 datetime the exchange settlement payment order was created at. */
    public var decidedAt: Date
    /** The identifier of the identity verification that corresponds to this decision. */
    public var identityVerificationGuid: String
    /** The outcome of the verification process. */
    public var outcome: OutcomeBankModel
    /** The reason codes explaining the outcome. */
    public var failureCodes: [FailureCodesBankModel]?

    public init(type: TypeBankModel, decidedAt: Date, identityVerificationGuid: String, outcome: OutcomeBankModel, failureCodes: [FailureCodesBankModel]? = nil) {
        self.type = type
        self.decidedAt = decidedAt
        self.identityVerificationGuid = identityVerificationGuid
        self.outcome = outcome
        self.failureCodes = failureCodes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case decidedAt = "decided_at"
        case identityVerificationGuid = "identity_verification_guid"
        case outcome
        case failureCodes = "failure_codes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(decidedAt, forKey: .decidedAt)
        try container.encode(identityVerificationGuid, forKey: .identityVerificationGuid)
        try container.encode(outcome, forKey: .outcome)
        try container.encodeIfPresent(failureCodes, forKey: .failureCodes)
    }
}

