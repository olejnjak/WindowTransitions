//
//  SlideAnimation.swift
//  WindowTransitions
//
//  Created by Jakub Olejník on 29/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import Foundation

extension Animation where Base: UIWindow {
    private var isRTL: Bool { return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft }
    
    public func slideIn(from direction: SlideDirection = .trailing, duration: TimeInterval = 0.3, completion: @escaping Completion = { _ in }) {
        let startFrame: CGRect
        let endFrame = UIScreen.main.bounds
        
        switch direction {
        case .top:
            startFrame = CGRect(origin: CGPoint(x: 0, y: -endFrame.height), size: endFrame.size)
        case .bottom:
            startFrame = CGRect(origin: CGPoint(x: 0, y: endFrame.height), size: endFrame.size)
        case .leading:
            startFrame = CGRect(origin: CGPoint(x: isRTL ? endFrame.width : -endFrame.width, y: 0), size: endFrame.size)
        case .trailing:
            startFrame = CGRect(origin: CGPoint(x: isRTL ? -endFrame.width : endFrame.width, y: 0), size: endFrame.size)
        }
        
        base.frame = startFrame
        
        UIView.transition(with: base, duration: duration, options: [], animations: { [weak base] in
            base?.frame = endFrame
            }, completion: completion)
    }
    
    public func slideOut(with direction: SlideDirection = .trailing, duration: TimeInterval = 0.3, completion: @escaping Completion = { _ in }) {
        let currentFrame = base.bounds
        let endFrame: CGRect
        
        switch direction {
        case .top:
            endFrame = CGRect(origin: CGPoint(x: 0, y: -currentFrame.height), size: currentFrame.size)
        case .bottom:
            endFrame = CGRect(origin: CGPoint(x: 0, y: currentFrame.height), size: currentFrame.size)
        case .leading:
            endFrame = CGRect(origin: CGPoint(x: isRTL ? currentFrame.width : -currentFrame.width, y: 0), size: currentFrame.size)
        case .trailing:
            endFrame = CGRect(origin: CGPoint(x: isRTL ? -currentFrame.width : currentFrame.width, y: 0), size: currentFrame.size)
        }
        
        UIView.transition(with: base, duration: duration, options: [], animations: { [weak base] in
            base?.frame = endFrame
            }, completion: completion)
    }
}
