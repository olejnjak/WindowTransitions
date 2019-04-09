//
//  AnimationProvider.swift
//  WindowTransitions
//
//  Created by Jakub Olejník on 29/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit

public struct Animation<Base> {
    public let base: Base
}

public protocol AnimationProvider { }

public extension AnimationProvider {
    var anim: Animation<Self> { return Animation(base: self) }
    static var anim: Animation<Self>.Type { return Animation.self }
}

extension UIWindow: AnimationProvider { }

public typealias Completion = (Bool) -> ()
