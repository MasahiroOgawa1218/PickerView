//
//  ViewController.swift
//  PickerViewlxx
//
//  Created by 小川真広 on 2017/06/14.
//  Copyright © 2017年 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(reflectText(notification:)),name: NSNotification.Name.init(rawValue: "hoge"), object: nil)

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        NotificationCenter.default.removeObserver(self)
//    }
//    
    func reflectText(notification: Notification) {
        print(notification)
        label.text = notification.userInfo?["text"] as? String
    }
}
