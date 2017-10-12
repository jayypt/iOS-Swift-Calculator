//
//  ViewController.swift
//  137
//
//  Created by Nattapong Chuangchum on 3/23/2559 BE.
//  Copyright © 2559 Nattapong Chuangchum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var operandin:Float=0
    var basein:Float=0
    var sum:Float=0
    var sub=subC ();
    var base:String=""
    var operand:String=""
    var i:Int=0
    
    @IBOutlet weak var txtShow: UITextField!
    
    @IBOutlet weak var txtNotice: UILabel!
    
    @IBAction func btn1(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"1"
    }
    @IBAction func btn2(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"2"
    }
    @IBAction func btn3(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"3"
    }
    @IBAction func btn4(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"4"
    }
    @IBAction func btn5(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"5"
    }
    @IBAction func btn6(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"6"
    }
    @IBAction func btn7(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"7"
    }
    @IBAction func btn8(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"8"
    }
    @IBAction func btn9(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"9"
    }
    @IBAction func btn0(_ sender: AnyObject) {
        txtShow.text=txtShow.text!+"0"
    }
    
    
    
    @IBAction func btnplus(_ sender: AnyObject) {
        base=txtShow.text! as String
        basein=Float(base)!
        txtShow.text=""
        i=1
    }
    @IBAction func btnminus(_ sender: AnyObject) {
        base=txtShow.text! as String
        basein=Float(base)!
        txtShow.text=""
        i=2
    }
    @IBAction func btnMultiply(_ sender: AnyObject) {
        base=txtShow.text! as String
        basein=Float(base)!
        txtShow.text=""
        i=3
    }
    @IBAction func btnDivide(_ sender: AnyObject) {
        base=txtShow.text! as String
        basein=Float(base)!
        txtShow.text=""
        i=4
    }
    
    
    
    @IBAction func btnsum(_ sender: AnyObject) {
        if i==0 {
            txtShow.text=""
        }
        if i==1 {
            operand=txtShow.text! as String
            operandin=Float(operand)!
            sum=sub.plus(basein,o:operandin);
            txtShow.text!=sum.description
        }
        else if i==2 {
            operand=txtShow.text! as String
            operandin=Float(operand)!
            sum=sub.minus(basein,o:operandin);
            txtShow.text!=sum.description
        }
        else if i==3 {
            operand=txtShow.text! as String
            operandin=Float(operand)!
            sum=sub.multiply(basein,o:operandin);
            txtShow.text!=sum.description
        }
        else if i==4 {
            operand=txtShow.text! as String
            operandin=Float(operand)!
            sum=sub.divide(basein,o:operandin);
            txtShow.text!=sum.description
        }
    }
    
    
    @IBAction func btnAC(_ sender: AnyObject) {
        txtShow.text=""
        basein=0
        operandin=0
        i=0
    }
    
    
    @IBAction func swon(_ sender: AnyObject) {
        let sw:UISwitch=sender as! UISwitch
        if  sw.isOn==true{
            txtShow.isHidden=false
            txtNotice.isHidden=true
            txtShow.text=""
            basein=0
            operandin=0
        }
        else {
            txtNotice.isHidden=false
            txtShow.isHidden=true
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtNotice.isHidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

