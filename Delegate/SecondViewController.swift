//
//  SecondViewController.swift
//  Delegate
//
//  Created by iFlame. on 20/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let objStundent : Stundent = Stundent(name: "Chintant", standard: 25)
        //objStundent.printMyInfo()
        
        let objEmployee : Employee = Employee(name: "Chintant", JobName: "IOS DEveloper")
        //objEmployee.printMyInfo()

        
        printDetails(objHumanInfoDelegate: objStundent)
        printDetails(objHumanInfoDelegate: objEmployee)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func buttonBackPressed(_ sender: Any) {
        let popedViewController = self.navigationController?.popViewController(animated: true)
        print("Poped ==>> ", popedViewController ?? "NO o VCCC")
    }

    func printDetails(objHumanInfoDelegate : HumanInfoDelegate) {
        objHumanInfoDelegate.printMyInfo()
    }
}
