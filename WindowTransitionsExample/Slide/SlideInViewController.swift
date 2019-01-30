//
//  SlideInViewController.swift
//  WindowTransitionsExample
//
//  Created by Jakub Olejník on 29/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit
import WindowTransitions

final class SlideInViewController: UIViewController {

    // MARK: - UI actions
    
    @IBAction func topTapped(_ sender: Any) {
        showFrom(.top)
    }
    
    @IBAction func leadingTapped(_ sender: Any) {
        showFrom(.leading)
    }
    
    @IBAction func trailingTapped(_ sender: Any) {
        showFrom(.trailing)
    }
    
    @IBAction func bottomTapped(_ sender: Any) {
        showFrom(.bottom)
    }
    
    // MARK: - Private helpers
    
    private var window: UIWindow?
    
    private func showFrom(_ direction: SlideDirection) {
        let slideOut = storyboard?.instantiateViewController(withIdentifier: "SlideOutViewController") as! SlideOutViewController
        
        slideOut.didEnd = { [weak self] in
            self?.window = nil
        }
        
        window = UIWindow(frame: .zero)
        window?.rootViewController = slideOut
        window?.makeKeyAndVisible()
        window?.anim.slideIn(from: direction)
    }
}

