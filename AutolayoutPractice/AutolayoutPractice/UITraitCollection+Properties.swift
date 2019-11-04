//
//  UITraitCollection+Properties.swift
//  AutolayoutPractice
//
//  Created by RC-Mac-Manish on 04/11/19.
//  Copyright © 2019 rarecrew. All rights reserved.
//

import Foundation
import UIKit

extension UITraitCollection {

    var isIpad: Bool {
        return horizontalSizeClass == .regular && verticalSizeClass == .regular
    }

    var isIphoneLandscape: Bool {
        return verticalSizeClass == .compact
    }

    var isIphonePortrait: Bool {
        return horizontalSizeClass == .compact && verticalSizeClass == .regular
    }

    var isIphone: Bool {
        return isIphoneLandscape || isIphonePortrait
    }
}
