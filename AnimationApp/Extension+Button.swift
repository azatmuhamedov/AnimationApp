//
//  Extension+Button.swift
//  AnimationApp
//
//  Created by Азат Мухамедов on 23.01.2023.
//

import UIKit

extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.6           //продолжительность анимации сек
        pulse.fromValue = 0.9         //начальное значение
        pulse.toValue = 1              //конечное значение
        pulse.autoreverses = true     //туда сюда
        pulse.repeatCount = 2          //повторить 2 раза
        pulse.initialVelocity = 0.5    //начальное ускорение
        pulse.damping = 1              //затухание
        
        layer.add(pulse, forKey: nil) //анимация
    }
}


