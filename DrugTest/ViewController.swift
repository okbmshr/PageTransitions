//
//  ViewController.swift
//  DrugTest
//
//  Created by 大久保将博 on 2017/01/29.
//  Copyright © 2017年 大久保将博. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //移動対象のオブジェクト
    @IBOutlet weak var testlabel_1: UILabel!
    @IBOutlet weak var testlabel_2: UILabel!
    @IBOutlet weak var testlabel_3: UILabel!
    
    // ドロップゾーンのオブジェクト
    @IBOutlet weak var dropzone_1: UIView!
    @IBOutlet weak var dropzone_2: UIView!
    @IBOutlet weak var dropzone_3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //ラベルA
    @IBAction func panLabel_1(_ sender: UIPanGestureRecognizer) {
        panlabel_move(sender)
    }
    
    //ラベルB
    @IBAction func panLabel_2(_ sender: UIPanGestureRecognizer) {
        panlabel_move(sender)
    }
    
    //ラベルC
    @IBAction func panLabel_3(_ sender: UIPanGestureRecognizer) {
        panlabel_move(sender)
    }
    
    //ラベルを移動する
    func panlabel_move(_ sender: UIPanGestureRecognizer) {
        //移動量を取得する。
        let move:CGPoint = sender.translation(in: view)
        
        //ドラッグした部品の座標に移動量を加算する。
        sender.view!.center.x += move.x
        sender.view!.center.y += move.y
        
        //移動量を0にする。
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    
    
//    @IBAction func panLabel(_ sender: UIPanGestureRecognizer) {
//        //移動量を取得する。
//        let move:CGPoint = sender.translation(in: view)
//        
//        //ドラッグした部品の座標に移動量を加算する。
//        sender.view!.center.x += move.x
//        sender.view!.center.y += move.y
//        
//        //ラベルに現在座標を表示する。
//        //testLabel.text = "\(sender.view!.frame.origin.x), \(sender.view!.frame.origin.y)"
//        
//        //移動量を0にする。
//        sender.setTranslation(CGPoint.zero, in: view)
//    }
    

}


