//
// ActivityLimitBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ActivityLimitBankModel: Codable, JSONEncodable, Hashable {

    /** The name of the limit. */
    public var name: String?
    /** The asset code for the limit. */
    public var asset: String?
    /** The limit amount for the asset. */
    public var amount: Int?
    /** The limit interval in seconds for the asset. */
    public var interval: Int?
    /** The activities associated with the limit. */
    public var activities: [String]?

    public init(name: String? = nil, asset: String? = nil, amount: Int? = nil, interval: Int? = nil, activities: [String]? = nil) {
        self.name = name
        self.asset = asset
        self.amount = amount
        self.interval = interval
        self.activities = activities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case asset
        case amount
        case interval
        case activities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(interval, forKey: .interval)
        try container.encodeIfPresent(activities, forKey: .activities)
    }
}
