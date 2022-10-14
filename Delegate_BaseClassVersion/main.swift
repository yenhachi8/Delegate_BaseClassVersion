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
protocol TransitionDelegate{
    func animateController(present:String)
}

//1
class BaseClass{
    var delegate:BaseClassProtocol?//3
    var transitioningDelegate:TransitionDelegate?
    func sendValue(){
        print("BaseClass sendValue()")
        delegate?.link(message: "from baseClass")//4
    }
    func presentVC(){
        print("base present")
        transitioningDelegate?.animateController(present: "from base presenting")
    }
}
//5
class MainClass:/* 6 */BaseClassProtocol, TransitionDelegate{
    func animateController(present: String) {
        print("Main \(present)")
    }
    
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
//base.sendValue()

base.transitioningDelegate = main
base.presentVC()
