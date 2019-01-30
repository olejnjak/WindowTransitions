//
//  FadeOutViewController.swift
//  WindowTransitionsExample
//
//  Created by Jakub Olejník on 30/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit

final class FadeOutViewController: UIViewController {
    var didEnd = { }
    
    @IBAction func fadeOutTapped(_ sender: Any) {
        view.window?.anim.fadeOut() { [weak self] _ in
            self?.didEnd()
        }
    }
}
