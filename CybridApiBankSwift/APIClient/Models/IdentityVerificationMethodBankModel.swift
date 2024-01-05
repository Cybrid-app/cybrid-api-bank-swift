//
// IdentityVerificationMethodBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum IdentityVerificationMethodBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case businessRegistration = "business_registration"
    case idAndSelfie = "id_and_selfie"
    case attested = "attested"
    case plaidIdentityMatch = "plaid_identity_match"
    case documentSubmission = "document_submission"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}