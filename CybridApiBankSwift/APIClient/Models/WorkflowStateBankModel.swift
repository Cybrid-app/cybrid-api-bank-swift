//
// WorkflowStateBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum WorkflowStateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case storing = "storing"
    case completed = "completed"
    case failed = "failed"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
