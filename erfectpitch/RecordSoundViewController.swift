//
//  RecordSoundViewController.swift
//  erfectpitch
//
//  Created by Deepak Lodhi on 20/06/21.
//

import UIKit
import AVFoundation
class RecordSoundViewController: UIViewController {

    
    var audioRecorder : AVAudioRecorder!
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
    
 
    
    @IBAction func startRecording(_ sender: Any) {
        Recording_label.text = "Recording in Progress"
        stopRecordingButton.isEnabled=true
        recordingButton.isEnabled=false
        
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
            let recordingName = "recordedVoice.wav"
            let pathArray = [dirPath, recordingName]
            let filePath = URL(string: pathArray.joined(separator: "/"))
        print(filePath ?? "null")

            let session = AVAudioSession.sharedInstance()
            try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)

            try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
            audioRecorder.isMeteringEnabled = true
            audioRecorder.prepareToRecord()
            audioRecorder.record()

         
    }
   
 
    @IBAction func stopRecording(_ sender: Any) {
        Recording_label.text = "Tap to Record"
        stopRecordingButton.isEnabled=false
        recordingButton.isEnabled=true
        
        audioRecorder.stop()
            let audioSession = AVAudioSession.sharedInstance()
            try! audioSession.setActive(false)
    }

    
}

