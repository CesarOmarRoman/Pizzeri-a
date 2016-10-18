//
//  VistaTipoDeQueso.swift
//  Pizzería
//
//  Created by César Omar Román Domínguez on 17/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import UIKit

class VistaTipoDeQueso: UIViewController {

    
    var tipoDeMasa : String = ""
    
    var valor : String = ""
    
        var subtitulo : String = ""
    
    @IBOutlet weak var tipoDeQuesoMozarela: UIButton!
    @IBOutlet weak var tipoDeQuesoCheddar: UIButton!
    @IBOutlet weak var tipoDeQuesoParmesano: UIButton!
    @IBOutlet weak var tipoDeQuesoSinQuedo: UIButton!
    
    @IBOutlet weak var subTitulo1: UILabel!
    @IBOutlet weak var subTitulo2: UILabel!
    @IBOutlet weak var subTitulo3: UILabel!
    @IBOutlet weak var subTitulo4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        subTitulo1.text = String(tipoDeMasa)
        subTitulo2.text = String(tipoDeMasa)
        subTitulo3.text = String(tipoDeMasa)
        subTitulo4.text = String(tipoDeMasa)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func presionarMozarela(_ sender: AnyObject) {
        valor = String(self.tipoDeQuesoMozarela.currentTitle!)!
    }
    
    @IBAction func presionarCheddar(_ sender: AnyObject) {
             valor = String(self.tipoDeQuesoCheddar.currentTitle!)!
    }
    
    @IBAction func presionarParmesano(_ sender: AnyObject) {
             valor = String(self.tipoDeQuesoParmesano.currentTitle!)!
    }

    @IBAction func presionarSinQueso(_ sender: AnyObject) {
             valor = String(self.tipoDeQuesoSinQuedo.currentTitle!)!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        subtitulo = String(self.subTitulo1.text!)!
        let resultado = "\(subtitulo) / \(valor)"
        let sigvista = segue.destination as! VistaTipoDeIngredientes
        sigvista.tipoDeQueso = resultado
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
