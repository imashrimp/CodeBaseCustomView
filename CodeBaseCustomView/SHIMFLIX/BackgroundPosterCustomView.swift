//
//  BackgroundPosterCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class BackgroundPoster: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
//    convenience init() {
//        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        contentMode = .scaleAspectFill
    }
}
