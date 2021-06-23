//
//  ViewController.swift
//  erfectpitch
//
//  Created by Deepak Lodhi on 20/06/21.
//

import UIKit

class ViewController: UIViewController {

    
 
    @IBOutlet weak var Recording_label: UILabel!
    
    @IBOutlet weak var recordingButton: UIButton!

    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad is called ")
        stopRecordingButton.isEnabled=false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear is called ")
    }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startRecording(_ sender: Any) {
        Recording_label.text = "Recording in Progress"
        stopRecordingButton.isEnabled=true
        recordingButton.isEnabled=false
         
    }
   
 
    @IBAction func stopRecording(_ sender: Any) {
        Recording_label.text = "Tap to Record"
        stopRecordingButton.isEnabled=false
        recordingButton.isEnabled=true
    }

    
}

