//
//  UIViewcontroller+Ext.swift
//  GHFollwersAPP
//
//  Created by Deniz on 5/13/23.
//

import UIKit


extension UIViewController {
    
    func presentGFAlertOnMainThread(title:String,message:String,buttonTitle:String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
