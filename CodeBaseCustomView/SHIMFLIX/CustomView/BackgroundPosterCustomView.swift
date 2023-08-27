//
//  BackgroundPosterCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

class BackgroundPoster: UIImageView {
    
    var title: String
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        configure(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(title: String) {
        contentMode = .scaleAspectFill
        image = UIImage(named: title)
    }
}
