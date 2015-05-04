//
//  ViewController.swift
//  testSwift
//
//  Created by xunianqiang on 15/5/4.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    
    @IBAction func btnClick(sender: AnyObject) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor();
        
        //Label
        let label = UILabel(frame: CGRect(origin: CGPointMake(10, 60), size: CGSizeMake(100, 50)))
        label.text = "hello world"
        self.view.addSubview(label)
        
        //Button
        let button = UIButton(frame: CGRectMake(10, 110, 100, 30))
        button.setTitle("I am button", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        button.backgroundColor = UIColor.grayColor()
        button.tag = 100;
        button.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        
        //UIAlertView
        var alert:UIAlertView = UIAlertView()
        alert.title = "alert"
        alert.delegate = self
        alert.addButtonWithTitle("cancel")
        alert.message = "this is an alert"
//        alert.show()
        
        //ImageView
        var imageView = UIImageView(frame: CGRectMake(10, 150, 100, 100))
        imageView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(imageView)
        
    }
    
    
    func buttonClick(sender:UIButton!)
    {
        if (sender.tag == 100)
        {
            println("hello btn click")
            println("buttonIndex:\(sender.tag)")
            var fvc = FirstViewController(nibName:"FirstViewController",bundle:nil)
            self.presentViewController(fvc, animated: true, completion: { () -> Void in
                println("vc finished")
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

