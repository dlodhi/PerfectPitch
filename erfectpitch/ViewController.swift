//
//  ViewController.swift
//  erfectpitch
//
//  Created by Deepak Lodhi on 20/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Recording_label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record Button was clicked")
    }
    
}

