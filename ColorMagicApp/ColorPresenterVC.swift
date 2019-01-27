//
//  ViewController.swift
//  ColorMagicApp
//
//  Created by Shilpa Joy on 2019-01-26.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import UIKit

class ColorPresenterVC : UIViewController, ColorTranDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func colorTransfer(bgColor: UIColor, withName colorName: String) {
        view.backgroundColor = bgColor
        colorNameLbl.text = colorName
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorTransferIdentifier" {
            let colorPickerVC = segue.destination as! ColorPickerVC
            colorPickerVC.delegate = self
            
        }
    }
    
}

