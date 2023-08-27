//
//  InfoButtonCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit

class InfoButtonCustomView: UIButton {
    
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
        config.image = UIImage(systemName: "info.circle")
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 25)
        config.imagePlacement = .top
        config.imagePadding = 8
        config.title = "정보"
        config.attributedTitle?.font = .systemFont(ofSize: 15)
        config.buttonSize = .mini
        
        self.configuration = config
    }
}
