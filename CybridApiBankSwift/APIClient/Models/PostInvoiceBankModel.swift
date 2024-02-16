//
// PostInvoiceBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostInvoiceBankModel: Codable, JSONEncodable, Hashable {

    /** The asset code the customer will receive the funds in. */
    public var asset: String
    /** The unique identifier for the customer. */
    public var customerGuid: String?
    /** The amount to be received in base units of the asset, i.e., the amount the customer will receive after fees. ONLY one of receive_amount or deliver_amount is required. */
    public var receiveAmount: Int?
    /** The amount to be delivered in base units of the asset, i.e., the amount the customer will receive before fees. ONLY one of receive_amount or deliver_amount is required. */
    public var deliverAmount: Int?
    /** The labels associated with the customer. */
    public var labels: [String]?

    public init(asset: String, customerGuid: String? = nil, receiveAmount: Int? = nil, deliverAmount: Int? = nil, labels: [String]? = nil) {
        self.asset = asset
        self.customerGuid = customerGuid
        self.receiveAmount = receiveAmount
        self.deliverAmount = deliverAmount
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case asset
        case customerGuid = "customer_guid"
        case receiveAmount = "receive_amount"
        case deliverAmount = "deliver_amount"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(asset, forKey: .asset)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(receiveAmount, forKey: .receiveAmount)
        try container.encodeIfPresent(deliverAmount, forKey: .deliverAmount)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

