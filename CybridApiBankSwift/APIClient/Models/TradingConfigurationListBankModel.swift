//
// TradingConfigurationListBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class TradingConfigurationListBankModel: NSObject, Codable, JSONEncodable {

    /** The total number of records available. */
    public var total: Int?
    public var totalNum: NSNumber? {
        get {
            return total as NSNumber?
        }
    }
    /** The page index to retrieve. */
    public var page: Int?
    public var pageNum: NSNumber? {
        get {
            return page as NSNumber?
        }
    }
    /** The number of entities per page to return. */
    public var perPage: Int?
    public var perPageNum: NSNumber? {
        get {
            return perPage as NSNumber?
        }
    }
    public var objects: [TradingConfigurationBankModel]?

    public init(total: Int? = nil, page: Int? = nil, perPage: Int? = nil, objects: [TradingConfigurationBankModel]? = nil) {
        self.total = total
        self.page = page
        self.perPage = perPage
        self.objects = objects
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case page
        case perPage = "per_page"
        case objects
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(perPage, forKey: .perPage)
        try container.encodeIfPresent(objects, forKey: .objects)
    }
}

