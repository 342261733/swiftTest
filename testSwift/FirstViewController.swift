//
//  FirstViewController.swift
//  testSwift
//
//  Created by xunianqiang on 15/5/4.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var helloBtn: UIButton!

    @IBAction func btnClick(sender: AnyObject) {
        if(sender.tag == 100 )
        {
            self.dismissViewControllerAnimated(true, completion: { () -> Void in
                
            })
        }
        else if (sender.tag == 101)
        {
            var svc = SecondViewController(nibName: "SecondViewController", bundle: nil)
            self .presentViewController(svc, animated: true, completion: { () -> Void in
                
            })
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()

        //数组
        var arr:[String] = ["hello","world"]
        println("the list contains \(arr.count) items")
        
        if arr.isEmpty
        {
            println("empty array ")
        }
        else{
            println("not empty array \(arr)")
        }
        
        arr.append("nihao")
        println("arr 2 :\(arr[2])")
        
        arr[1...2] = ["not"]//replace  从1开始到2结束，替换为后面的内容
        println(".. result \(arr)")
        
        arr.insert("newInsert", atIndex: arr.count)
        println("insert result \(arr)")
        
        let removeObj = arr.removeAtIndex(1)
        println("remove obj \(removeObj)")
        println("remove result \(arr)")
        
        for item in arr{
            println("arr item \(item)")
        }
        
        
        //字典
        var emptyDict = Dictionary<String,String>()
        var myDict:Dictionary<String,String> = ["key1":"value1","key2":"value2"]
        println("dict count \(myDict.count)")
        println("dict \(myDict) emptyDict \(emptyDict)")
        
        myDict["key3"] = "value3"
        myDict["key3"] = "value32"
        println("dict \(myDict)")
        
        for (key, value) in myDict {
            println("\(key): \(value)")
        }
        
        for key in myDict.keys {
            println("myDict code: \(key)")
        }
        for value in myDict.values {
            println("myDict code: \(value)")
        }
        
        
        let newArr = Array(myDict.keys)
        println("new arr \(newArr)")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
