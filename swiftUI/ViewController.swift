//
//  ViewController.swift
//  swiftUI
//
//  Created by hupan on 14-7-5.
//  Copyright (c) 2014年 hupan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//       let label = UILabel(frame:CGRect(origin: CGPointMake(10.0, 50.0), size: CGSizeMake(150,50)))
//        label.text = "this is a lable"
//        self.view.addSubview(label)
        
        let btn = UIButton(frame:CGRect(origin: CGPointMake(10.0, 110.0), size: CGSizeMake(150,50)))
        btn.setTitle("button", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.redColor()
        btn.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        
    }
    
    func buttonClick(sender: UIButton!){
        var alert = UIAlertView()
        //直接这样创建有bug
        //var alert = UIAlertView(title: "alert", message: "this is an alert", delegate: self, cancelButtonTitle: "cancel")
        alert.title = "alert"
        alert.delegate = self
        alert.addButtonWithTitle("cancel")
        alert.message = "this is an alert"
        alert.show()     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

