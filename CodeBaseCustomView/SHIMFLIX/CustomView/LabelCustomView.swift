//
//  LabelCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/27.
//

import UIKit

class LabelCustomView: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        backgroundColor = .clear
        text = "미리보기"
        textColor = .white
        font = .systemFont(ofSize: 20)
    }
}

