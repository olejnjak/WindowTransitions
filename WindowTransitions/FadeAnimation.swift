//
//  FadeAnimation.swift
//  WindowTransitions
//
//  Created by Jakub Olejník on 30/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit

extension Animation where Base: UIWindow {
    public func fadeIn(duration: TimeInterval = 0.3, completion: @escaping Completion = { _ in }) {
        base.alpha = 0
        base.frame = UIScreen.main.bounds
        
        UIView.animate(withDuration: duration, animations: { [weak base] in
            base?.alpha = 1
        }, completion: completion)
    }
    
    public func fadeOut(duration: TimeInterval = 0.3, completion: @escaping Completion = { _ in }) {
        UIView.animate(withDuration: duration, animations: { [weak base] in
            base?.alpha = 0
            }, completion: completion)
    }
}
