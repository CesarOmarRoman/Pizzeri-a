//
//  VistaTipoConfirmación.swift
//  Pizzería
//
//  Created by César Omar Román Domínguez on 18/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import UIKit

class VistaTipoConfirmacio_n: UIViewController {

    @IBOutlet weak var subTitulo1: UILabel!
    @IBOutlet weak var mostrarIng1: UILabel!
    @IBOutlet weak var mostrarIng2: UILabel!
    @IBOutlet weak var mostrarIng3: UILabel!
    @IBOutlet weak var mostrarIng4: UILabel!
    @IBOutlet weak var mostrarIng5: UILabel!
    
    var tipoPizza = ""
    var total = ""
    var ing1 = ""
    var ing2 = ""
    var ing3 = ""
    var ing4 = ""
    var ing5 = ""
    
  
    
    override func viewWillAppear(_ animated: Bool) {
        let fullNameArr = total.characters.split{$0 == " "}.map(String.init)
        subTitulo1.text = String(tipoPizza)
        mostrarIng1.text = String(fullNameArr[0])
        mostrarIng2.text = String(fullNameArr[1])
        mostrarIng3.text = String(fullNameArr[2])
        mostrarIng4.text = String(fullNameArr[3])
        mostrarIng5.text = String(fullNameArr[4])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
