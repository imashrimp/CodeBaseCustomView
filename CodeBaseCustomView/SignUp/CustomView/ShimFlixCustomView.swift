//
//  ShimFlixCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class ShimFlixLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    func configureLabel() {
        textColor = .red
        font = .systemFont(ofSize: 35, weight: .heavy)
        text = "SHIMFLIX"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
