//
//  ModelClassed.swift
//  Delegate
//
//  Created by iFlame. on 20/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

protocol HumanInfoDelegate {
    var name : String {get set}
    func printMyInfo()
}

class Stundent : HumanInfoDelegate {
    
    var name : String
    var standard : Int
    
    init(name : String, standard : Int) {
        self.name = name
        self.standard = standard
    }
    
    func printMyInfo(){
        print("== >> Student << ===")
        print("== >> Name : \(name)")
        print("== >> Standard : \(standard)")
    }
    
}

class Employee : HumanInfoDelegate {
    
    var name : String
    var JobName : String
    
    init(name : String, JobName : String) {
        self.name = name
        self.JobName = JobName
    }
    
    func printMyInfo(){
        print("== >> Employee << ===")
        print("== >> Name : \(name)")
        print("== >> Standard : \(JobName)")
    }
}

