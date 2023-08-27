//
//  CategoryCustomButton.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/25.
//

import UIKit

class LabelOnlyCustomButton: UIButton {
    
    var title: String // CategoryCustomButton이라는 클래스에 선언된 프로퍼티
    var fontSize: CGFloat
    var fontWeight: UIFont.Weight
    
    init(title: String, fontSize: CGFloat, fontWeight: UIFont.Weight) { //CategoryCustomButton 클래스의 초기화 구문
        self.title = title //CategoryCustomButton클래스에 선언한 프로퍼티에 초기값을 설정하기 위한 코드
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        super.init(frame: .zero) //UIButoon의 초기화 구문을 가져와서 그대로 씀
        test(title: title, fontSize: fontSize, fontWeight: fontWeight)
    } //내가 초기화하려는 CategoryCustomButton는 UIButton클래스를 상속하고, title이라는 프로퍼티를 갖고 있어 그래서 title프로퍼티에 초기값을 설정해주고 UIButton클래스를 상속받는 Button이니깐 UIButton타입의 CategoryCustomButton르 초기화하기 위해 super.init을 하면 됨. 그러면 CategoryCustomButton클래스는 인스턴스 생성이 되면 title값을 설정할 수 있고, UIButton으로도 초기화 될거임.

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func test(title: String, fontSize: CGFloat, fontWeight: UIFont.Weight) {
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.title = title
        config.attributedTitle?.font = .systemFont(ofSize: fontSize, weight: fontWeight)
        
        self.configuration = config
    }
}

//extension CategoryCustomButton {
//    func categoryCaseButtonConfigure(buttonStyle: buttonStyle) {
//        switch buttonStyle {
//
//        case .plain:
//            <#code#>
//        case .bold:
//            <#code#>
//        }
//    }
//}

//extension CategoryCustomButton {
//    private func plainButtonAttribute() {
//
//    }
//}
