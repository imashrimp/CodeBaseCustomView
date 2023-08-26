//
//  CustomButton.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/25.
//

import UIKit
import SnapKit

class CustomButton: UIButton {
    
//    let button = {
//        let view = UIButton()
//        view.tintColor = .white
//        return view
//    }()
//
//    let label = {
//       let view = UILabel()
//        view.textColor = .white
//        view.font = .systemFont(ofSize: 15)
//        view.textAlignment = .center
//        return view
//    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.addSubview(button)
//        self.addSubview(label)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//    func makeConstraints() {
//        button.snp.makeConstraints { make in
//            make.top.horizontalEdges.equalToSuperview()
//            make.height.greaterThanOrEqualTo(50)
//            make.centerX.equalToSuperview()
//        }
//        
//        label.snp.makeConstraints { make in
//            make.top.equalTo(button.snp.bottom)
//            make.horizontalEdges.bottom.equalToSuperview()
//        }
//    }
    
    func configure() {
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.image = UIImage(systemName: "checkmark")
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 25)
        config.imagePlacement = .top
        config.imagePadding = 8
        config.title = "내가 찜한 컨텐츠"
        config.attributedTitle?.font = .systemFont(ofSize: 15)
//        config.buttonSize = .mini
        
        self.configuration = config
        
    }
}
