//
//  FadeInViewController.swift
//  WindowTransitionsExample
//
//  Created by Jakub Olejník on 30/01/2019.
//  Copyright © 2019 Jakub Olejník. All rights reserved.
//

import UIKit

final class FadeInViewController: UIViewController {
    private var window: UIWindow?
    
    @IBAction func fadeInTapped(_ sender: Any) {
        let fadeOut = storyboard?.instantiateViewController(withIdentifier: "FadeOutViewController") as! FadeOutViewController
        
        fadeOut.didEnd = { [weak self] in
            self?.window = nil
        }
        
        window = UIWindow(frame: .zero)
        window?.rootViewController = fadeOut
        window?.makeKeyAndVisible()
        window?.anim.fadeIn()
    }
}
