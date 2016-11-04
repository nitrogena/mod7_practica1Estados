//
//  DetalleEstado.swift
//  Practica1
//
//  Created by Invitado on 30/09/16.
//  Copyright © 2016 Invitado. All rights reserved.
//

import UIKit

class DetalleEstado: UIViewController {
    var info:NSDictionary?
    //SE VA A LLENAR CUANDO SE HAGA CLIC EN LA CELDA

    @IBOutlet weak var txtInfo: UITextView!
    
    @IBAction func btnVerMas(sender: AnyObject) {
        //VAMOS A ABRIR UNA URL
        
        let nombreSinEspacio = (self.info?["entidad"] as! String).stringByReplacingOccurrencesOfString(" ", withString: "%20")
        
        let laURL = "https://google.com/search?q=\(nombreSinEspacio)"
        UIApplication.sharedApplication().openURL(NSURL(string: laURL)!)
        
        //prefijo base es NS
        //A PARTIR DEL STRING CREAMOS UN OBJETO URL
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        //ANTES ASIGNAMOS EL CONTROLLER AL TEXT VIEW
        //1a opcion
        //self.txtInfo!.text = self.info?.description
        
        
        //2a opcion
        let infoCompleto = NSMutableString()
        infoCompleto.appendString(self.info?["entidad"] as! String)
        
        let munArray = self.info?["municipios"] as! NSArray

        /*SINTAXIS VIEJA QUE YA NO SE VA A USAR
        for (var i = 0; i < munArray.count; i += 1){
            let munNombre = munArray[i] as! String
            infoCompleto.appendString("* " + munNombre + "\n")
        }
 */
        for munNombre in munArray{
            infoCompleto.appendString("* \(munNombre as! String) \n")
        }
        self.txtInfo!.text = infoCompleto as String
        
        
        //Borrar
        //self.txtInfo!.text = self.info?.["entidad"] as! String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
