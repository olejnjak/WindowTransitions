//
//  AnimationProvider.swift
//  WindowTransitions
//
//  Created by Jakub Olejník on 29/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import Foundation

public struct Animation<Base> {
    public let base: Base
}

public protocol AnimationProvider { }

public extension AnimationProvider {
    public var anim: Animation<Self> { return Animation(base: self) }
    public static var anim: Animation<Self>.Type { return Animation.self }
}

extension UIWindow: AnimationProvider { }

public typealias Completion = (Bool) -> ()
