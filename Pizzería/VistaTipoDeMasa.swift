//
//  VistaTipoDeMasa.swift
//  Pizzería
//
//  Created by César Omar Román Domínguez on 17/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import UIKit

class VistaTipoDeMasa: UIViewController {

    @IBOutlet weak var subTitulo1: UILabel!
    @IBOutlet weak var subTitulo2: UILabel!
    @IBOutlet weak var SubTitulo3: UILabel!
    @IBOutlet weak var pizzaDelga: UIButton!
    @IBOutlet weak var pizzaCrujiente: UIButton!
    @IBOutlet weak var pizzaGruesa: UIButton!
    
    var tamañoPizza : String = ""
    
    var valor : String = ""

    var subtitulo : String = ""
   
    
    override func viewWillAppear(_ animated: Bool) {
        subTitulo1.text = String(tamañoPizza)
        subTitulo2.text = String(tamañoPizza)
        SubTitulo3.text = String(tamañoPizza)
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   

    }

    @IBAction func presionarDelgada(_ sender: AnyObject) {
        valor = String(self.pizzaDelga.currentTitle!)!
    }
    
    @IBAction func presionarCrujiente(_ sender: AnyObject) {
        valor = String(self.pizzaCrujiente.currentTitle!)!
    }
    
    @IBAction func presionarGruesa(_ sender: AnyObject) {
        valor = String(self.pizzaGruesa.currentTitle!)!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        subtitulo = String(self.subTitulo1.text!)!
        let resultado = "\(subtitulo) / \(valor)"
        let sigvista = segue.destination as! VistaTipoDeQueso
        sigvista.tipoDeMasa = resultado
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
