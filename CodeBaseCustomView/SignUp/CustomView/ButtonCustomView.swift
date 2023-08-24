//
//  ButtonCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class ButtonCustomView: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        backgroundColor = .white
        setTitle("회원가입", for: .normal)
        setTitleColor(.black, for: .normal)
        setTitle("회원가입", for: .highlighted)
        setTitleColor(.darkGray, for: .highlighted)
        titleLabel?.font = .systemFont(ofSize: 20)
        layer.cornerRadius = 6
    }
}
