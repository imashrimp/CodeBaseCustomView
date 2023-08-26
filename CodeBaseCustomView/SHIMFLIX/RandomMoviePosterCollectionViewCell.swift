//
//  RandomMoviePosterCollectionViewCell.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit

class RandomMoviePosterCollectionViewCell: UICollectionViewCell {

    let randomMoviePoster = RandomImageCustomView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(randomMoviePoster)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
