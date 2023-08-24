//
//  SwitchButtonCustomView.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//
 
import UIKit

class SwitchButton: UISwitch {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        isOn = true
    }
    
}
