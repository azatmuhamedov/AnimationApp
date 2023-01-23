//
//  ViewController.swift
//  AnimationApp
//
//  Created by Азат Мухамедов on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    private var animationStarted = false //для условия

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        
        UIView.animate(                                               //задаю анимацию
            withDuration: 0.5,                                        //скорость анимации
            delay: 0,                                                //задержка, через сколько сработает сек
            options: [.autoreverse, .repeat]) { [unowned self] in    //опции, например повторение
                if !animationStarted {     //условаие,чтоб анимация не уходила влево постоянно
                    coreAnimationView.frame.origin.x -= 40              //фрейм это рамка, смещает налевао вьюху
                    animationStarted.toggle()
                }
                
                }
        
        sender.pulsate() //вызвал кнопку
    }
    
    
}

