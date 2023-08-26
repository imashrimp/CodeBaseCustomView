//
//  RandomImageCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit

class RandomImageCustomView: UIImageView {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        contentMode = .scaleAspectFill
        clipsToBounds = true
        layer.borderWidth = 3
        layer.borderColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1).cgColor
        guard let movieName = MovieData.movieList.randomElement() else { return }
        image = UIImage(named: movieName)
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        layer.cornerRadius = frame.width / 2
    }
    
}
