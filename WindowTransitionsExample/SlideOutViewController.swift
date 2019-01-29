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
        close(with: .top)
    }
    
    @IBAction func leadingTapped(_ sender: Any) {
        close(with: .leading)
    }
    
    @IBAction func trailingTapped(_ sender: Any) {
        close(with: .bottom)
    }
    
    @IBAction func bottomTapped(_ sender: Any) {
        close(with: .bottom)
    }

    // MARK: - Private helpers
    
    private func close(with direction: SlideDirection) {
        view.window?.animation.slideOut(with: direction) { [weak self] _ in
            self?.didEnd()
        }
    }
}

