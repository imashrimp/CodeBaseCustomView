//
//  ViewController.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let shimFlixLabel = ShimFlixLabel()
    
    //MARK: - delegate 사용해서 탭하면 텍스트 사라지게 => 이거 하려면 태그 줘야함.
    let emailTextField = {
       let view = CustomTextField()
        view.text = "이메일 주소 또는 전화번호"
        return view
    }()
    
    let passwordTextField = {
       let view = CustomTextField()
        view.text = "비밀번호"
        return view
    }()
    
    let nickNameTextField = {
       let view = CustomTextField()
        view.text = "닉네임"
        return view
    }()
    
    let locationTextField = {
       let view = CustomTextField()
        view.text = "위치"
        return view
    }()
    
    let promoCodeTextField = {
       let view = CustomTextField()
        view.text = "추천 코드"
        return view
    }()
    
    let addtionalInfoLabel = AdditionalInfoLabel()
    
    let signUpButton = ButtonCustomView()
    
    let switchButton = SwitchButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubview(shimFlixLabel)
        view.addSubview(signUpButton)
        view.addSubview(addtionalInfoLabel)
        view.addSubview(switchButton)
        configureTextField()
        makeConstraints()
    }


}

extension ViewController {
    
    func configureTextField() {
        let textFieldArray: [UITextField] = [emailTextField,
                             passwordTextField,
                             nickNameTextField,
                             locationTextField,
                             promoCodeTextField]
        
        for (index, item) in textFieldArray.enumerated() {
            view.addSubview(item)
            item.tag = index
        }
    }
    
    func makeConstraints() {
        
        shimFlixLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-155)
            make.height.equalTo(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(emailTextField.snp.bottom).offset(12)
        }
        
        nickNameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(passwordTextField.snp.bottom).offset(12)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(nickNameTextField.snp.bottom).offset(12)
        }
        
        promoCodeTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(locationTextField.snp.bottom).offset(12)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(55)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(promoCodeTextField.snp.bottom).offset(12)
        }
        
        addtionalInfoLabel.snp.makeConstraints { make in
            make.centerY.equalTo(switchButton.snp.centerY)
            make.leading.equalTo(signUpButton.snp.leading)
        }
        
        switchButton.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(12)
            make.trailing.equalTo(signUpButton.snp.trailing)
        }
    }
}
