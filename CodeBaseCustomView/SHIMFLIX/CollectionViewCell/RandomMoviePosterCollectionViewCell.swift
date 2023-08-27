//
//  RandomMoviePosterCollectionViewCell.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/26.
//

import UIKit
import SnapKit

class RandomMoviePosterCollectionViewCell: UICollectionViewCell {

    let randomMoviePoster = RandomImageCustomView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(randomMoviePoster)
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeConstraints() {
        randomMoviePoster.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
