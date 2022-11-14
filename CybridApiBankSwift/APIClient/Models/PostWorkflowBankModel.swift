//
// PostWorkflowBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostWorkflowBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case plaid = "plaid"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum KindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case create = "link_token_create"
        case update = "link_token_update"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum LanguageBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case en = "en"
        case fr = "fr"
        case es = "es"
        case nl = "nl"
        case de = "de"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The workflow type. */
    public var type: TypeBankModel
    /** The Plaid workflow kind. */
    public var kind: KindBankModel?
    /** The customer identifier associated with the workflow. */
    public var customerGuid: String?
    /** The external bank account identifier associated with the workflow. */
    public var externalBankAccountGuid: String?
    /** The language to initialize Plaid link. */
    public var language: LanguageBankModel?
    /** The customization name for Plaid link. */
    public var linkCustomizationName: String?
    /** The redirect URI for Plaid link. */
    public var redirectUri: String?
    /** The Android package name for Plaid link. */
    public var androidPackageName: String?

    public init(type: TypeBankModel, kind: KindBankModel? = nil, customerGuid: String? = nil, externalBankAccountGuid: String? = nil, language: LanguageBankModel? = nil, linkCustomizationName: String? = nil, redirectUri: String? = nil, androidPackageName: String? = nil) {
        self.type = type
        self.kind = kind
        self.customerGuid = customerGuid
        self.externalBankAccountGuid = externalBankAccountGuid
        self.language = language
        self.linkCustomizationName = linkCustomizationName
        self.redirectUri = redirectUri
        self.androidPackageName = androidPackageName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case kind
        case customerGuid = "customer_guid"
        case externalBankAccountGuid = "external_bank_account_guid"
        case language
        case linkCustomizationName = "link_customization_name"
        case redirectUri = "redirect_uri"
        case androidPackageName = "android_package_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(kind, forKey: .kind)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(linkCustomizationName, forKey: .linkCustomizationName)
        try container.encodeIfPresent(redirectUri, forKey: .redirectUri)
        try container.encodeIfPresent(androidPackageName, forKey: .androidPackageName)
    }
}
