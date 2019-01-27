//
//  ColorPickerVC.swift
//  ColorMagicApp
//
//  Created by Shilpa Joy on 2019-01-26.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate : ColorTranDelegate? = nil
   
    @IBAction func ColorBtnPressed(_ sender: UIButton)
    {
        print(sender.titleLabel?.text)
        delegate?.colorTransfer(bgColor: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
    }
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //wheen we press on button we can pass a color and bg color to this delegate using userdidchoose 

        // Do any additional setup after loading the view.
    }

    

}
