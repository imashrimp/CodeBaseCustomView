//
//  AdditionalInfoLabelCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class AdditionalInfoLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        text = "추가 정보 입력"
        textColor = .white
        font = .systemFont(ofSize: 15)
        textAlignment = .left
    }
}
