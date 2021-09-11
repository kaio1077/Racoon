//
//  ViewController.swift
//  ProjectRacoon2
//
//  Created by Kaio on 11/09/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField_item: UITextField!
    
    var itens: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func salvar(_ sender: Any) {
        self.itens.append(textField_item.text!)
        UserDefaults.standard.set(self.itens, forKey: "itens")
        UserDefaults.standard.synchronize()
        
        textField_item.text = ""
    }
    
}

