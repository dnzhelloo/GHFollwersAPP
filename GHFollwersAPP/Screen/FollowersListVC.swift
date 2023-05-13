//
//  FollowersListVC.swift
//  GHFollwersAPP
//
//  Created by Deniz on 5/12/23.
//

import UIKit

class FollowersListVC: UIViewController {
    
    var username:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
