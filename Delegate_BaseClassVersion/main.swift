//
//  main.swift
//  Delegate_BaseClassVersion
//
//  Created by neo.yang on 2022/8/3.
//

import Foundation
//3
protocol BaseClassProtocol{
    func link()
}

//1
class BaseClass{
    var delegate:BaseClassProtocol?//5
    func sendValue(){
        print("BaseClass sendValue()")
        delegate?.link()//6
    }
}
//2
class MainClass:/* 4 */BaseClassProtocol{
    func link() {
        print("link MainClass")
    }
}
var base = BaseClass()
var main = MainClass()
base.delegate = main//7
base.sendValue()
