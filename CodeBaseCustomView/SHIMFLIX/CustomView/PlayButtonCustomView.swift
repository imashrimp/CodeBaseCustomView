//
//  PlayButtonCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit

class PlayButtonCustomView: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        practiceButtonConfigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func practiceButtonConfigure() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.baseForegroundColor = .black
        config.image = UIImage(systemName: "play.fill")
        config.buttonSize = .large
        config.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4)
        config.title = "재생"
        config.imagePadding = 5
        config.cornerStyle = .small
        
        self.configuration = config
    }
}
