//
// PostExternalWalletBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostExternalWalletBankModel: Codable, JSONEncodable, Hashable {

    /** The name of the account. */
    public var name: String
    /** The customer identifier. */
    public var customerGuid: String?
    /** The asset code. */
    public var asset: String
    /** The blockchain wallet address for the wallet. */
    public var address: String
    /** The blockchain tag to use when transferring crypto to the wallet. */
    public var tag: String?

    public init(name: String, customerGuid: String? = nil, asset: String, address: String, tag: String? = nil) {
        self.name = name
        self.customerGuid = customerGuid
        self.asset = asset
        self.address = address
        self.tag = tag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case customerGuid = "customer_guid"
        case asset
        case address
        case tag
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encode(asset, forKey: .asset)
        try container.encode(address, forKey: .address)
        try container.encodeIfPresent(tag, forKey: .tag)
    }
}

