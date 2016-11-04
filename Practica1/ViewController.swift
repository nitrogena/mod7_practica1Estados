//
//  ViewController.swift
//  Practica1
//
//  Created by Invitado on 30/09/16.
//  Copyright © 2016 Invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPass: UITextField!
    
    @IBAction func btnEntrarTouch(sender: AnyObject) {
        if self.txtEmail.text != "" {
            if self.txtPass.text != ""{
                self.performSegueWithIdentifier("login", sender: self)
            }
        }else{
            //variable inmutable
            let ac:UIAlertController = UIAlertController(title: "Error", message: "Todos los campos son requeridos",
                preferredStyle: .Alert)
        
            
            let bac = UIAlertAction(title:"OK", style: .Default, handler: nil)
            ac.addAction(bac)
            self.presentViewController(ac, animated: true, completion: nil)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

