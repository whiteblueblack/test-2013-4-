//
//  ViewController.swift
//  text11
//
//  Created by ZH13 on 16/3/31.
//  Copyright © 2016年 ZH13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculator = calculation ()
    var Displaycache = ""
    var cache = 0.0
    var cache2:Double?
    @IBOutlet weak var pingmu: UITextField!
    
    @IBAction func one(sender: AnyObject) {
        Press("1")
    }
    @IBAction func two(sender: AnyObject) {
        Press("2")
    }
    @IBAction func three(sender: AnyObject) {
        Press("3")
    }
    @IBAction func four(sender: AnyObject) {
        Press("4")
    }
    @IBAction func five(sender: AnyObject) {
        Press("5")
    }
    @IBAction func six(sender: AnyObject) {
        Press("6")
    }
    @IBAction func seven(sender: AnyObject) {
        Press("7")
    }
    @IBAction func eight(sender: AnyObject) {
        Press("8")
    }
    @IBAction func nine(sender: AnyObject) {
        Press("9")
    }
    @IBAction func zero(sender: AnyObject) {
        Press("0")
    }
    @IBAction func dian(sender: AnyObject) {
        Press(".")
    }
    @IBAction func add(sender: AnyObject) {
        calculator.setcurrentalgorithm (.addition)
        evaluation( )
    }
    @IBAction func reduce(sender: AnyObject) {
        calculator.Setcurrentalgorithm (.subtraction)
        evaluation( )
    }
    @IBAction func multiply(sender: AnyObject) {
        calculator.Setcurrentalgorithm(.multiplication)
        evaluation( )
    }
    @IBAction func remove(sender: AnyObject) {
        calculator.Setcurrentalgorithm(.division)
        evaluation( )
    }

    @IBAction func square(sender: AnyObject) {
        calculator.Setcurrentalgorithm(.square)
        evaluation( )
    }
    @IBAction func Exponentpower(sender: AnyObject) {
        calculator.Setcurrentalgorithm(.exponential)
        evaluation( )
    }
    @IBAction func Resetall(sender: AnyObject) {

    }
    @IBAction func result(sender: AnyObject) {

        evaluation( )
    }


    @IBAction func Resetcurrent(sender: AnyObject) {
   
    }
    
    func Press(number:String) {
        Displaycache += number
        pingmu.text = Displaycache
    }
    
    func evaluation() {
        var result = ""
        
        if !Displaycache.isEmpty {
            let temporary = Displaycache as NSString
            cache = temporary.doubleValue
            Displaycache = ""
        }
        let temporary = cache
        
        if  let Thepreviousnumber = cache2 {
            
            result = calculator.Resultseeking(Operationnumber: theprevious  number, Operandoperand: temporary)
            pingmu.text = result
            let temporary = result as NSString
            cache2 = temporary.doubleValue
            
        } else {
            cache2 = cache
            cache = 0.0
        }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        pingmu.editing
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


