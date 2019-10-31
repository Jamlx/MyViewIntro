//
//  ViewController.swift
//  MyViewIntro
//
//  Created by James Cavanaugh on 10/31/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let mainView = self.view
        
        let v1 = UIView(frame: CGRect(x:50,y:50,width:200,height:200))
        v1.backgroundColor = UIColor.red
        mainView?.addSubview(v1)
        
        let v2 = UIView(frame: CGRect(x:200,y:200,width:200,height:200))
        v2.backgroundColor = UIColor.blue
        mainView?.addSubview(v2)
        
        let v3 = UIView(frame: CGRect(x:150,y:150,width:200,height:200))
        v3.backgroundColor = UIColor.yellow
        v3.alpha = 0.5
        v3.isOpaque = false
        mainView?.insertSubview(v3, aboveSubview: v1)
        
        let v4 = UIView(frame: CGRect(x:50,y:50,width:100,height:100))
        v4.backgroundColor = UIColor.green
        v2.addSubview(v4)
        v4.transform = CGAffineTransform(rotationAngle: 45 * CGFloat(Double.pi)/180.0)
        
    }
    
    @IBAction func resetView(_ sender: Any) {
        resetView(self.view)
    }
    
    func resetView(_ view: UIView?){
        view!.subviews.forEach{$0.removeFromSuperview()}
    }


}

