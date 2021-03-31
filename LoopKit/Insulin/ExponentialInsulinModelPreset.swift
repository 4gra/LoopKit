//
//  ExponentialInsulinModelPreset.swift
//  LoopKit
//
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

public enum ExponentialInsulinModelPreset: String, Codable {
    case rapidActingAdult
    case rapidActingChild
    case fasterAdult
    case fasterAdult40
    case fasterAdult45
    case fiasp
}


// MARK: - Model generation
extension ExponentialInsulinModelPreset {
    public var actionDuration: TimeInterval {
        switch self {
        case .rapidActingAdult:
            return .minutes(360)
        case .rapidActingChild:
            return .minutes(360)
        case .fasterAdult:
            return .minutes(210)
        case .fasterAdult40:
            return .minutes(240)
        case .fasterAdult45:
            return .minutes(270)
        case .fiasp:
            return .minutes(360)
        }
    }

    public var peakActivity: TimeInterval {
        switch self {
        case .rapidActingAdult:
            return .minutes(75)
        case .rapidActingChild:
            return .minutes(65)
        case .fasterAdult:
            return .minutes(65)
        case .fasterAdult40:
            return .minutes(65)
        case .fasterAdult45:
            return .minutes(65)
        case .fiasp:
            return .minutes(55)
        }
    }

    var model: InsulinModel {
        return ExponentialInsulinModel(actionDuration: actionDuration, peakActivityTime: peakActivity)
    }
}


extension ExponentialInsulinModelPreset: InsulinModel {
    public var effectDuration: TimeInterval {
        return model.effectDuration
    }
    
    public var delay: TimeInterval {
        return model.delay
    }

    public func percentEffectRemaining(at time: TimeInterval) -> Double {
        return model.percentEffectRemaining(at: time)
    }
}


extension ExponentialInsulinModelPreset: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "\(self.rawValue)(\(String(reflecting: model))"
    }
}
