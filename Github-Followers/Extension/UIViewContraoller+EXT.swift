//
//  UIViewContraoller+EXT.swift
//  Github-Followers
//
//  Created by Ethan Gonsalves on 2022-11-02.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title:String, message: String, ButtonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(titel: title, message: message, buttonTitle:   ButtonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle  = .crossDissolve
            
            self.present(alertVC, animated: true)
        }
    }
}
