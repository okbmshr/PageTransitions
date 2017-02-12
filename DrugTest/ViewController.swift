//
//  ViewController.swift
//  DrugTest
//
//  Created by 大久保将博 on 2017/01/29.
//  Copyright © 2017年 大久保将博. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func panLabel(_ sender: UIPanGestureRecognizer) {
        //移動量を取得する。
        let move:CGPoint = sender.translation(in: view)
        
        //ドラッグした部品の座標に移動量を加算する。
        sender.view!.center.x += move.x
        sender.view!.center.y += move.y
        
        //ラベルに現在座標を表示する。
        //testLabel.text = "\(sender.view!.frame.origin.x), \(sender.view!.frame.origin.y)"
        
        //移動量を0にする。
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    



}

