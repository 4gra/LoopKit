//
//  InsulinModelSettings+Loop.swift
//  LoopKitUI
//
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import LoopKit


public extension InsulinModelSettings {
    var title: String {
        switch self {
        case .exponentialPreset(let model):
            return model.title
        case .walsh(let model):
            return model.title
        }
    }
    var subtitle: String {
        switch self {
        case .exponentialPreset(let model):
            return model.subtitle
        case .walsh(let model):
            return model.subtitle
        }
    }
}


public extension ExponentialInsulinModelPreset {
    var title: String {
        switch self {
        case .rapidActingAdult:
            return LocalizedString("Rapid-Acting – Adults", comment: "Title of insulin model preset - rapid acting adult")
        case .rapidActingChild:
            return LocalizedString("Rapid-Acting – Children", comment: "Title of insulin model preset - rapid acting children")
        case .fasterAdult:
            return LocalizedString("Faster-Acting (3.5h)", comment: "Title of insulin model preset - faster adult (3.5)")
        case .fasterAdult40:
            return LocalizedString("Faster-Acting (4h)", comment: "Title of insulin model preset - faster adult (4)")
        case .fasterAdult45:
            return LocalizedString("Faster-Acting (4.5h)", comment: "Title of insulin model preset - faster adult (4.5)")
        case .fiasp:
            return LocalizedString("Fiasp", comment: "Title of insulin model preset - fiasp")
        }
    }

    var subtitle: String {
        switch self {
        case .rapidActingAdult:
            return LocalizedString("This model assumes peak insulin activity at 75 minutes.", comment: "Subtitle of Rapid-Acting – Adult preset")
        case .rapidActingChild:
            return LocalizedString("This model assumes peak insulin activity at 65 minutes.", comment: "Subtitle of Rapid-Acting – Children preset")
        case .fasterAdult:
            return LocalizedString("This model assumes 210 minute action and peak at 65 minutes.", comment: "Subtitle of Rapid-Acting – 3.5 preset")
        case .fasterAdult40:
            return LocalizedString("This model assumes 240 minute action and peak at 65 minutes.", comment: "Subtitle of Rapid-Acting – 4.0 preset")
        case .fasterAdult45:
            return LocalizedString("This model assumes 270 minute action and peak at 65 minutes.", comment: "Subtitle of Rapid-Acting – 4.5 preset")
        case .fiasp:
            return LocalizedString("This model assumes peak insulin activity at 55 minutes.", comment: "Subtitle of Fiasp preset")
        }
    }
}


public extension WalshInsulinModel {
    static var title: String {
        return LocalizedString("Walsh", comment: "Title of insulin model setting")
    }
    
    var title: String {
        return Self.title
    }

    static var subtitle: String {
        return LocalizedString("The legacy model used by Loop, allowing customization of action duration.", comment: "Subtitle description of Walsh insulin model setting")
    }
    
    var subtitle: String {
        return Self.subtitle
    }
}
