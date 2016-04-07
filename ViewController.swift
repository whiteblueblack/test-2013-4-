//
//  ViewController.swift
//  text11
//
//  Created by ZH13 on 16/3/31.
//  Copyright © 2016年 ZH13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var 计算器 = 计算()
    var 显示缓存 = ""
    var 缓存 = 0.0
    var 缓存2:Double?
    @IBOutlet weak var pingmu: UITextField!
    
    @IBAction func one(sender: AnyObject) {
        点按("1")
    }
    @IBAction func two(sender: AnyObject) {
        点按("2")
    }
    @IBAction func three(sender: AnyObject) {
        点按("3")
    }
    @IBAction func four(sender: AnyObject) {
        点按("4")
    }
    @IBAction func five(sender: AnyObject) {
        点按("5")
    }
    @IBAction func six(sender: AnyObject) {
        点按("6")
    }
    @IBAction func seven(sender: AnyObject) {
        点按("7")
    }
    @IBAction func eight(sender: AnyObject) {
        点按("8")
    }
    @IBAction func nine(sender: AnyObject) {
        点按("9")
    }
    @IBAction func zero(sender: AnyObject) {
        点按("0")
    }
    @IBAction func dian(sender: AnyObject) {
        点按(".")
    }
    @IBAction func add(sender: AnyObject) {
        计算器.设置当前算法(.加法)
        求值( )
    }
    @IBAction func reduce(sender: AnyObject) {
        计算器.设置当前算法(.减法)
        求值( )
    }
    @IBAction func multiply(sender: AnyObject) {
        计算器.设置当前算法(.乘法)
        求值( )
    }
    @IBAction func remove(sender: AnyObject) {
        计算器.设置当前算法(.除法)
        求值( )
    }

    @IBAction func 平方(sender: AnyObject) {
        计算器.设置当前算法(.平方)
        求值( )
    }
    @IBAction func 算数指数幂(sender: AnyObject) {
        计算器.设置当前算法(.指数幂)
        求值( )
    }
    @IBAction func 重置所有(sender: AnyObject) {

    }
    @IBAction func 结果(sender: AnyObject) {

        求值( )
    }


    @IBAction func 重置当前(sender: AnyObject) {
   
    }
    
    func 点按(数字:String) {
        显示缓存 += 数字
        pingmu.text = 显示缓存
    }
    
    func 求值() {
        var 结果 = ""
        
        if !显示缓存.isEmpty {
            let 临时 = 显示缓存 as NSString
            缓存 = 临时.doubleValue
            显示缓存 = ""
        }
        let 临时 = 缓存
        
        if  let 前一个数字 = 缓存2 {
            
            结果 = 计算器.求结果(操作数: 前一个数字, 被操作数: 临时)
            pingmu.text = 结果
            let 临 = 结果 as NSString
            缓存2 = 临.doubleValue
            
        } else {
            缓存2 = 缓存
            缓存 = 0.0
        }
}
}


