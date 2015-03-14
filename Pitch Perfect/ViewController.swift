//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Lance Hirsch on 3/14/15.
//  Copyright (c) 2015 Lance Hirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        //Hide stop button.
        stopButton.hidden = true
        
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        //println("in recordAudio")
    }

    @IBAction func stopRecording(sender: AnyObject) {
        recordingInProgress.hidden = true
    }
}

