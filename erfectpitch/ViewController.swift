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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear is called ")
    }
    
    
    @IBAction func recordButton(_ sender: Any) {
    }
    
    @IBAction func stopRecordingButton(_ sender: Any) {
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("Record Button was clicked")
        Recording_label.text = "Recording in Progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Recording was stopped ")
        Recording_label.text = "Recording is stopped"
    }
    
}

