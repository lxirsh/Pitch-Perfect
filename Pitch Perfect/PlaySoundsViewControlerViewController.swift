//
//  PlaySoundsViewControlerViewController.swift
//  Pitch Perfect
//
//  Created by Lance Hirsch on 3/14/15.
//  Copyright (c) 2015 Lance Hirsch. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewControlerViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            audioPlayer.enableRate = true
        }else{
            println("the filePath is empty")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    

    @IBAction func playSlow(sender: AnyObject) {
        audioPlayer.rate = 0.5
        playAudio()
    }
    
    @IBAction func playFast(sender: AnyObject) {
        audioPlayer.rate = 2
        playAudio()
    }

    @IBAction func stopAudio(sender: AnyObject) {
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
