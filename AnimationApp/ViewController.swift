//
//  ViewController.swift
//  AnimationApp
//
//  Created by Азат Мухамедов on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        coreAnimationView.frame              //фрейм это рамка
        
        
        sender.pulsate() //вызвал кнопку
    }
    
    
}

