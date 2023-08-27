//
//  InfoButtonCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit

class ImageAndLabelButtonCustomView: UIButton {
    
    var image: String
    var title: String
  
    init(image: String, title: String) {
        self.image = image
        self.title = title
        super.init(frame: .zero)
        configure(image: image, title: title)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(image: String, title: String) {
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.image = UIImage(systemName: image)
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 25)
        config.imagePlacement = .top
        config.imagePadding = 8
        config.title = title
        config.attributedTitle?.font = .systemFont(ofSize: 15)
        
        self.configuration = config
    }
}
