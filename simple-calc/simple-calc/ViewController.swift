//
//  ViewController.swift
//  simple-calc
//
//  Created by David Yuan on 4/19/16.
//  Copyright © 2016 David Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var pointer = 0
    var intlist = [String]()
    var textBoxString = ""
    var refresh = false
    var rpn = false

    @IBOutlet weak var textBox: UITextField!
    
    func operationCheck() -> Bool {
        if(pointer == 2) {
            let oper = intlist[1]
            return (oper == "+" || oper == "-" || oper == "*" || oper == "/" || oper == "%")
        }
        return false
    }
    
    func cleanup() {
        if(intlist.count > 0) {
            for x in 0...intlist.count-1 {
                intlist[x] = ""
            }
            pointer = 0
            refresh = true
        }
    }
    
    func addition() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[2])
            let sum = num1! + num2!
            textBoxString += String(sum)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func additionrpn() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[1])
            let sum = num1! + num2!
            textBoxString += String(sum)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func subtraction() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[2])
            let num3 = num1! - num2!
            textBoxString += String(num3)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func subtractionrpn() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[1])
            let num3 = num1! - num2!
            textBoxString += String(num3)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func multiplication() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[2])
            let product = num1! * num2!
            textBoxString += String(product)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func multiplicationrpn() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[1])
            let product = num1! * num2!
            textBoxString += String(product)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func division() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[2])
            let num3 = Double(num1!) / Double(num2!)
            textBoxString += String(num3)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func divisionrpn() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[1])
            let num3 = Double(num1!) / Double(num2!)
            textBoxString += String(num3)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func mod() {
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[2])
            let mod = num1! % num2!
            textBoxString += String(mod)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func modrpn(){
        if (pointer == 2) {
            let num1 = Int(intlist[0])
            let num2 = Int(intlist[1])
            let mod = num1! % num2!
            textBoxString += String(mod)
        } else {
            textBoxString = "Invalid Operation"
        }
    }
    
    func counter() {
        var count = 0
        for string in intlist {
            if string != "count" && string != "" {
                count += 1
            }
        }
        textBoxString += String(count)
    }
    

    func average() {
        var sum = 0
        var count = 0
        for string in intlist {
            if string != "avg" && string != "" {
                sum += Int(string)!
                count += 1
                NSLog("\(sum) \(count)")
            }
        }
        let avg = Double(sum) / Double(count)
        textBoxString += String(avg)
    }
    
    func factorial() {
        let number = Int(intlist[0])
        var current = 1
        var total = 1
        while current <= number {
            total *= current
            current += 1
        }
        textBoxString += String(total)
    }
    
    @IBAction func button0(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "0"
        } else {
            self.intlist.append("0")
        }
        textBoxString += "0"
        textBox.text = textBoxString
        NSLog("0 was pressed!")
    }
    
    @IBAction func button1(sender: UIButton) {
        if refresh {
            textBoxString = ""
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "1"
        } else {
            self.intlist.append("1")
        }
        textBoxString += "1"
        textBox.text = textBoxString
        NSLog("1 was pressed!")
    }
    @IBAction func button2(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "2"
        } else {
            self.intlist.append("2")
        }
        textBoxString += "2"
        textBox.text = textBoxString
        NSLog("2 was pressed!")
    }
    
    @IBAction func button3(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "3"
        } else {
            self.intlist.append("3")
        }
        textBoxString += "3"
        textBox.text = textBoxString
        NSLog("3 was pressed!")
    }
    
    @IBAction func button4(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "4"
        } else {
            self.intlist.append("4")
        }
        textBoxString += "4"
        textBox.text = textBoxString
        NSLog("4 was pressed!")
    }
    
    @IBAction func button5(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "5"
        } else {
            self.intlist.append("5")
        }
        textBoxString += "5"
        textBox.text = textBoxString
        NSLog("5 was pressed!")
    }
    
    @IBAction func button6(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "6"
        } else {
            self.intlist.append("6")
        }
        textBoxString += "6"
        textBox.text = textBoxString
        NSLog("6 was pressed!")
    }
    
    
    @IBAction func button7(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "7"
        } else {
            self.intlist.append("7")
        }
        textBoxString += "7"
        textBox.text = textBoxString
        NSLog("7 was pressed!")
    }
    
    @IBAction func button8(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "8"
        } else {
            self.intlist.append("8")
        }
        textBoxString += "8"
        textBox.text = textBoxString
        NSLog("8 was pressed!")
    }
    
    @IBAction func button9(sender: UIButton) {
        if refresh {
            textBoxString = ""
            refresh = false
        }
        if(intlist.count > pointer) {
            intlist[pointer] += "9"
        } else {
            self.intlist.append("9")
        }
        textBoxString += "9"
        textBox.text = textBoxString
        NSLog("9 was pressed!")
    }
    
    @IBAction func buttonequals(sender: UIButton) {
        textBoxString += " = "
        textBox.text = textBoxString
        NSLog("= was pressed!")
        if(rpn) {
            let oper = intlist[pointer]
            if oper == "+" {
                additionrpn()
            } else if oper == "-" {
                subtractionrpn()
            } else if oper == "*" {
                multiplicationrpn()
            } else if oper == "/" {
                divisionrpn()
            } else if oper == "%" {
                modrpn()
            } else if oper == "count" {
                counter()
            } else if oper == "avg" {
                average()
            } else if oper == "fact" && pointer == 1 {
                factorial()
            }
        } else {
            let oper = intlist[1]
            if (oper == "+" || oper == "-" || oper == "*" || oper == "/" || oper == "%") {
                if oper == "+" {
                    addition()
                } else if oper == "-" {
                    subtraction()
                } else if oper == "*" {
                    multiplication()
                } else if oper == "/" {
                    division()
                } else if oper == "%" {
                    mod()
                }
            } else if oper == "count" {
                counter()
            } else if oper == "avg" {
                average()
            } else if oper == "fact" && pointer == 1 {
                factorial()
            }
        }
        textBox.text = textBoxString
        
        cleanup()
    }
    
    @IBAction func buttonplus(sender: UIButton) {
        pointer += 1
        if(rpn) {
            if(intlist.count > pointer) {
                intlist[pointer] = "+"
            } else {
                self.intlist.append("+")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "+"
                pointer += 1
            } else {
                self.intlist.append("+")
                pointer += 1
            }
        }
        textBoxString += " + "
        textBox.text = textBoxString
        NSLog("+ was pressed!")
    }
    
    @IBAction func buttonminus(sender: UIButton) {
        pointer += 1
        if(rpn){
            if(intlist.count > pointer) {
                intlist[pointer] = "-"
            } else {
                self.intlist.append("-")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "-"
                pointer += 1
            } else {
                self.intlist.append("-")
                pointer += 1
            }
        }
        textBoxString += " - "
        textBox.text = textBoxString
        NSLog("- was pressed!")
    }
    
    @IBAction func buttonmultiply(sender: UIButton) {
        pointer += 1
        if(rpn){
            if(intlist.count > pointer) {
                intlist[pointer] = "*"
            } else {
                self.intlist.append("*")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "*"
                pointer += 1
            } else {
                self.intlist.append("*")
                pointer += 1
            }
        }
        textBoxString += " * "
        textBox.text = textBoxString
        NSLog("* was pressed!")
    }
    
    @IBAction func buttondivide(sender: UIButton) {
        pointer += 1
        if(rpn) {
            if(intlist.count > pointer) {
                intlist[pointer] = "/"
            } else {
                self.intlist.append("/")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "/"
                pointer += 1
            } else {
                self.intlist.append("/")
                pointer += 1
            }
        }
        textBoxString += " / "
        textBox.text = textBoxString
        NSLog("/ was pressed!")
    }
    
    @IBAction func buttonmod(sender: UIButton) {
        pointer += 1
        if(rpn){
            if(intlist.count > pointer) {
                intlist[pointer] = "%"
            } else {
                self.intlist.append("%")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "%"
                pointer += 1
            } else {
                self.intlist.append("%")
                pointer += 1
            }
        }
        textBoxString += " % "
        textBox.text = textBoxString
        NSLog("% was pressed!")
    }
    
    @IBAction func buttoncount(sender: UIButton) {
        pointer += 1
        if(rpn) {
            if(intlist.count > pointer) {
                intlist[pointer] = "count"
            } else {
                self.intlist.append("count")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "count"
                pointer += 1
            } else {
                self.intlist.append("count")
                pointer += 1
            }
        }
        textBoxString += " count "
        textBox.text = textBoxString
        NSLog("count was pressed!")
    }
    
    @IBAction func buttonavg(sender: UIButton) {
        pointer += 1
        if(rpn) {
            if(intlist.count > pointer) {
                intlist[pointer] = "avg"
            } else {
                self.intlist.append("avg")
            }
        } else {
            if(intlist.count > pointer) {
                intlist[pointer] = "avg"
                pointer += 1
            } else {
                self.intlist.append("avg")
                pointer += 1
            }
        }
        textBoxString += " avg "
        textBox.text = textBoxString
        NSLog("avg was pressed!")
    }
    
    @IBAction func buttonfact(sender: UIButton) {
        pointer += 1
        if(intlist.count > pointer) {
            intlist[pointer] = "fact"
        } else {
            self.intlist.append("fact")
        }
        textBoxString += " fact "
        textBox.text = textBoxString
        NSLog("fact was pressed!")
    }
    
    @IBAction func buttonswitch(sender: UISwitch) {
        rpn = !rpn
        cleanup()
    }
    
    @IBAction func buttonNext(sender: UIButton) {
        if(rpn) {
            pointer += 1
            textBoxString += " "
            textBox.text = textBoxString
            NSLog("next was pressed!")
        }
    }
}

