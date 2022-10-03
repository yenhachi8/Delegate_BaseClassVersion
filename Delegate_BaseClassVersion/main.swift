//
//  main.swift
//  Delegate_BaseClassVersion
//
//  Created by neo.yang on 2022/8/3.
//

import Foundation
///1 BaseClass
///2 Protocol
///3 delegate
///4 delegate function
///
///5 MainClass
///6 use Protocol
///7 use function



//2
protocol BaseClassProtocol{
    func link(message:String)
}

//1
class BaseClass{
    var delegate:BaseClassProtocol?//3
    func sendValue(){
        print("BaseClass sendValue()")
        delegate?.link(message: "from baseClass")//4
    }
}
//5
class MainClass:/* 6 */BaseClassProtocol{
    func link(message: String) {
        print("MainClass \(message)")
    }
    
    func link() {
        print("link MainClass")
    }
}
var base = BaseClass()
var main = MainClass()
base.delegate = main//7
base.sendValue()
