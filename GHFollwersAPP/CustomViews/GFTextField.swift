//
//  GFTextField.swift
//  GHFollwersAPP
//
//  Created by Deniz on 5/12/23.
//

import UIKit

class GFTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        adjustsFontSizeToFitWidth = true
        font = UIFont.preferredFont(forTextStyle: .title2)
        textAlignment = .center
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
        
        placeholder = "Enter a username..."
    }
}
