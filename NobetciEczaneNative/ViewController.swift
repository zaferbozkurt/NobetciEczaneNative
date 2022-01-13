//
//  ViewController.swift
//  NobetciEczaneNative
//
//  Created by Zafer Bozkurt on 13.01.2022.
//

import UIKit
import ElectrodeContainer

class ViewController: UIViewController {

    @IBOutlet weak var rnView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let viewController = ElectrodeReactNative.sharedInstance().miniApp(withName: "EczMiniapp", properties: nil, overlay: true, sizeFlexibility: 300, delegate: nil)
        
        viewController.view.frame = UIScreen.main.bounds;
        self.rnView.addSubview(viewController.view)
    }

}


