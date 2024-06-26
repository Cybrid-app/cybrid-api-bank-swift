//
// IdentityVerificationTypeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum IdentityVerificationTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case kyc = "kyc"
    case bankAccount = "bank_account"
    case counterparty = "counterparty"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
