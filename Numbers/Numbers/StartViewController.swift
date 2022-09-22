//
//  StartViewController.swift
//  Numbers
//
//  Created by Mikhail Chudaev on 21.09.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    let onboadrVC = OnboardingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardViewController()
    }
    
    func onboardViewController() {
        if UserDefaults.standard.bool(forKey: KeysUserDefaults.firstStart ) == false {
            self.present(onboadrVC, animated: true, completion: nil)
        }
    }
    
}
