//
// PostFeeConfigurationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostFeeConfigurationBankModel: Codable, JSONEncodable, Hashable {

    public enum ProductTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case trading = "trading"
        case savings = "savings"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ProductProviderBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case compound = "compound"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of product being configured. */
    public var productType: ProductTypeBankModel
    /** The asset code. */
    public var asset: String
    /** The fees associated with the configuration */
    public var fees: [PostFeeBankModel]
    /** The provider for the product being configured. */
    public var productProvider: ProductProviderBankModel?

    public init(productType: ProductTypeBankModel, asset: String, fees: [PostFeeBankModel], productProvider: ProductProviderBankModel? = nil) {
        self.productType = productType
        self.asset = asset
        self.fees = fees
        self.productProvider = productProvider
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productType = "product_type"
        case asset
        case fees
        case productProvider = "product_provider"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(productType, forKey: .productType)
        try container.encode(asset, forKey: .asset)
        try container.encode(fees, forKey: .fees)
        try container.encodeIfPresent(productProvider, forKey: .productProvider)
    }
}

