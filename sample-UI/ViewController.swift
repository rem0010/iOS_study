//
//  ViewController.swift
//  sample-UI
//
//  Created by HAYASHI TAKAO on 2019/04/21.
//  Copyright © 2019 HAYASHI TAKAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myView: UIView!
    var hellobutton: UIButton!
    var flag: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flag = false
        self.view.backgroundColor = UIColor.cyan
        
//        Myviewを生成
        myView = UIView()
        myView.frame = CGRect(x:0, y: 0, width: 100, height: 100)
        
//        色、配置などのプロパティを設定
        myView.backgroundColor = UIColor.green
        myView.alpha = 0.5
        myView.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height/2)
        myView.isHidden = true
        
        
//        button生成
//        hellobutton = UIButton(frame: CGRectMake(0, 0, 100, 50))
        hellobutton = UIButton()
        hellobutton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        hellobutton.backgroundColor = UIColor.red
        hellobutton.layer.cornerRadius = 20.0
        hellobutton.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height-50)
        let tilte: String = "Hello!"
        hellobutton.setTitle(tilte, for: .normal)
        hellobutton.setTitleColor(UIColor.white, for: .normal)
        hellobutton.addTarget(self, action: Selector(("onClickMyButton:")), for: .touchUpInside)
        
//        Viewに追加
        self.view.addSubview(myView)

//         ボタンをviewに追加.
        self.view.addSubview(hellobutton)
    }
    
    func onClickMyButton(sender: UIButton) {
        if !flag {
            myView.isHidden = false
            hellobutton.setTitle("Disappear", for: .normal)
            flag = true
        }else {
            myView.isHidden = true
            hellobutton.setTitle("Appear", for: .normal)
            
            flag = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
}

