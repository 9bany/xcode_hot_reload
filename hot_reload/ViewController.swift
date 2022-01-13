//
//  ViewController.swift
//  hot_reload
//
//  Created by bany on 13/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        NotificationCenter.default.addObserver(self,
            selector: #selector(configureView),
            name: Notification.Name("INJECTION_BUNDLE_NOTIFICATION"), object: nil)
    }
    
    @objc func configureView() {
        self.navigationController?.popViewController(animated: false)
        
        self.view.backgroundColor = .purple
        let viewController = NewViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }


}

