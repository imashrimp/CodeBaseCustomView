//
//  CustomButton.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/25.
//

import UIKit
import SnapKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.image = UIImage(systemName: "checkmark")
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 25)
        config.imagePlacement = .top
        config.imagePadding = 8
        config.title = "내가 찜한 컨텐츠"
        config.attributedTitle?.font = .systemFont(ofSize: 15)
        
        self.configuration = config
        
    }
}
