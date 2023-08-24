//
//  CategoryCustomButton.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/25.
//

import UIKit

class CategoryCustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
    }
}
