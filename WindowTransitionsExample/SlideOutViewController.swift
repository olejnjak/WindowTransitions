//
//  SlideOutViewController.swift
//  WindowTransitionsExample
//
//  Created by Jakub Olejník on 29/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit
import WindowTransitions

final class SlideOutViewController: UIViewController {
    var didEnd = { }
    
    // MARK: - UI actions
    
    @IBAction func topTapped(_ sender: Any) {
        closeWith(direction: .top)
    }
    
    @IBAction func leadingTapped(_ sender: Any) {
        closeWith(direction: .leading)
    }
    
    @IBAction func trailingTapped(_ sender: Any) {
        closeWith(direction: .trailing)
    }
    
    @IBAction func bottomTapped(_ sender: Any) {
        closeWith(direction: .bottom)
    }

    // MARK: - Private helpers
    
    private func closeWith(direction: SlideDirection) {
        view.window?.animation.slideOut(with: direction) { [weak self] _ in
            self?.didEnd()
        }
    }
}

