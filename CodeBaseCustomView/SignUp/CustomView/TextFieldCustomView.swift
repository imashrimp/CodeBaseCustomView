//
//  TextFieldCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        backgroundColor = .darkGray
        textColor = .white
        textAlignment = .center
        font = .systemFont(ofSize: 18)
        layer.cornerRadius = 5
    }
    
}
