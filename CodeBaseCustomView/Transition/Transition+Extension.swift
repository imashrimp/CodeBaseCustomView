//
//  Transition+Extension.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit

extension UIViewController {
    
    func transition<T: UIViewController>(vc: T, transitionStyle: TransitionStyle) {
        
        let nav = UINavigationController(rootViewController: vc)
        
        switch transitionStyle {
        case .present:
            present(vc, animated: true)
        case .presentNavigation:
            present(nav, animated: true)
        case .presentFullNavigation:
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        case .push:
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
