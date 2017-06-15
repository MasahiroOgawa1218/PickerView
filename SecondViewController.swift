//
//  SecondViewController.swift
//  PickerViewlxx
//
//  Created by 小川真広 on 2017/06/14.
//  Copyright © 2017年 myname. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        textField.returnKeyType = UIReturnKeyType.done
        // Int型
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let text = textField.text {
        NotificationCenter.default.post(name: Notification.Name.init(rawValue: "hoge"),
                                        object: nil,
                                        userInfo: ["text": text])
            textField.resignFirstResponder()
        }
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
