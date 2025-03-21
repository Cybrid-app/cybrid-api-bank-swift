//
// ComplianceCheckTypeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ComplianceCheckTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case businessWatchlists = "business_watchlists"
    case businessVerification = "business_verification"
    case businessTaxIdVerification = "business_tax_id_verification"
    case businessAttested = "business_attested"
    case personAttested = "person_attested"
    case personTaxIdAttested = "person_tax_id_attested"
    case personWatchlists = "person_watchlists"
    case personVerification = "person_verification"
    case personAuthentication = "person_authentication"
    case personGovIdVerification = "person_gov_id_verification"
    case personTaxIdVerification = "person_tax_id_verification"
    case externalBankAccountVerification = "external_bank_account_verification"
    case externalBankAccountAttested = "external_bank_account_attested"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
