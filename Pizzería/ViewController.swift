//
//  ViewController.swift
//  Pizzería
//
//  Created by César Omar Román Domínguez on 17/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   
    var valor = ""
    @IBOutlet weak var tamañoChica: UIButton!
    @IBOutlet weak var tamañoMediana: UIButton!
    @IBOutlet weak var tamañoGrande: UIButton!
    
    @IBAction func Validar(_ sender: AnyObject) {
         valor = String(self.tamañoChica.currentTitle!)!
    }
    
    @IBAction func presionarTamañoMediana(_ sender: AnyObject) {
        valor = String(self.tamañoMediana.currentTitle!)!
    }
    
    @IBAction func presionarTamañoGrande(_ sender: AnyObject) {
        valor = String(self.tamañoGrande.currentTitle!)!
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = valor
        let sigvista = segue.destination as! VistaTipoDeMasa
        sigvista.tamañoPizza = resultado
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
 


}

