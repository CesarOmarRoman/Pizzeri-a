//
//  VistaTipoDeIngredientes.swift
//  Pizzería
//
//  Created by César Omar Román Domínguez on 17/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import UIKit

class VistaTipoDeIngredientes: UIViewController {

    @IBOutlet weak var palomaJamon: UIImageView!
    @IBOutlet weak var palomaPepperoni: UIImageView!
    @IBOutlet weak var palomaPavo: UIImageView!
    @IBOutlet weak var palomaSalchica: UIImageView!
    @IBOutlet weak var palomaAceituna: UIImageView!
    @IBOutlet weak var palomaCebolla: UIImageView!
    @IBOutlet weak var palomaPimiento: UIImageView!
    @IBOutlet weak var palomaPiña: UIImageView!
    @IBOutlet weak var palomaAnchoa: UIImageView!
    @IBOutlet weak var palomaJalapeños: UIImageView!
    
    @IBOutlet weak var subTitulo1: UILabel!
    
    var jamon = ""
    var pepperoni = ""
    var pavo = ""
    var salchica = ""
    var aceituna = ""
    var cebolla = ""
    var pimiento = ""
    var piña = ""
    var anchoa = ""
    var jalapeños = ""
    
    var ingredientesTotales = 0
    
    var tipoDeQueso : String = ""
    
    var subtitulo = ""
    
    var ing1 = ""
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        subtitulo = String(self.subTitulo1.text!)!
        let resultado = "\(subtitulo)"
        ing1 = "\(jamon) \(pepperoni) \(pavo) \(salchica) \(aceituna) \(cebolla) \(pimiento) \(piña) \(anchoa) \(jalapeños)"
        let sigvista = segue.destination as! VistaTipoConfirmacio_n
        sigvista.tipoPizza = resultado
        sigvista.total = ing1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        subTitulo1.text = String(tipoDeQueso)
    }
    
    
    //Valor al seleccionar
    @IBAction func seleccionarJamon(_ sender: AnyObject) {
       
        if palomaJamon.isHidden == true {
             if ingredientesTotales < 5 {
            palomaJamon.isHidden = false
            jamon = "Jamón"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaJamon.isHidden = true
            jamon = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    @IBAction func seleccionarPepperoni(_ sender: AnyObject) {
               if palomaPepperoni.isHidden == true {
                if ingredientesTotales < 5 {

                palomaPepperoni.isHidden = false
            pepperoni = "Pepperoni"
            ingredientesTotales = ingredientesTotales + 1
                }
        }else{
              palomaPepperoni.isHidden = true
            pepperoni = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    @IBAction func seleccionarPavo(_ sender: AnyObject) {
       
        if palomaPavo.isHidden == true {
              if ingredientesTotales < 5 {
            palomaPavo.isHidden = false
            pavo = "Pavo"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaPavo.isHidden = true
            pavo = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    @IBAction func seleccionarSalchica(_ sender: AnyObject) {
        
        if palomaSalchica.isHidden == true {
             if ingredientesTotales < 5 {
            palomaSalchica.isHidden = false
            salchica = "Salchica"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaSalchica.isHidden = true
            salchica = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    @IBAction func seleccionarAceituna(_ sender: AnyObject) {
        
        if palomaAceituna.isHidden == true {
             if ingredientesTotales < 5 {
            palomaAceituna.isHidden = false
            aceituna = "Aceituna"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaAceituna.isHidden = true
            aceituna = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    @IBAction func seleccionarCebolla(_ sender: AnyObject) {
        
        if palomaCebolla.isHidden == true {
             if ingredientesTotales < 5 {
            palomaCebolla.isHidden = false
            cebolla = "Cebolla"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaCebolla.isHidden = true
            cebolla = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }

    @IBAction func seleccionarPimiento(_ sender: AnyObject) {
       
        if palomaPimiento.isHidden == true {
              if ingredientesTotales < 5 {
            palomaPimiento.isHidden = false
            pimiento = "Pimiento"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaPimiento.isHidden = true
            pimiento = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
   
    @IBAction func seleccionarPiña(_ sender: AnyObject) {
       
    
        if palomaPiña.isHidden == true {
              if ingredientesTotales < 5 {
            palomaPiña.isHidden = false
            piña = "Piña"
            ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaPiña.isHidden = true
            piña = ""
            ingredientesTotales = ingredientesTotales - 1
        }
        
    }
   
    
    @IBAction func seleccionarAnchoa(_ sender: AnyObject) {
       
        if palomaAnchoa.isHidden == true {
              if ingredientesTotales < 5 {
            palomaAnchoa.isHidden = false
            anchoa = "Anchoa"
                ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaAnchoa.isHidden = true
            anchoa = ""
               ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    
    @IBAction func seleccionarJalapeños(_ sender: AnyObject) {
       
        if palomaJalapeños.isHidden == true {
              if ingredientesTotales < 5 {
            palomaJalapeños.isHidden = false
            jalapeños = "Jalapeños"
                ingredientesTotales = ingredientesTotales + 1
            }
        }else{
            palomaJalapeños.isHidden = true
            jalapeños = ""
               ingredientesTotales = ingredientesTotales - 1
        }
        
    }
    
   
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
