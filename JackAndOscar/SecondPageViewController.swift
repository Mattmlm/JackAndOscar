//
//  SecondPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit
import AVFoundation

class SecondPageViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var eyesImageView: UIImageView!
    @IBOutlet weak var audioControlsView: UIView!
    
    var audioPlayer: AVAudioPlayer!
    var audioRecorder: AVAudioRecorder!
    
    var image_1: UIImage!
    var image_2: UIImage!
    var image_3: UIImage!
    var image_4: UIImage!
    
    var images: [UIImage]!
   
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image_1 = UIImage(named: "transparent")
        image_2 = UIImage(named: "jack2Eyelids_halfopen")
        image_3 = UIImage(named: "jack2Eyelids_halfopen_2")
        image_4 = UIImage(named: "jack2Eyelids")
        
        images = [image_1, image_2, image_3, image_4]
        animatedImage = UIImage.animatedImageWithImages(images, duration:0.6)
        
        CurrentView.instance.setView(1, view: self)
        
        audioControlsView.hidden = true
        
        let fileManager = NSFileManager.defaultManager()
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let documentDirectory = urls[0] as NSURL
        let soundURL = documentDirectory.URLByAppendingPathComponent("sound.aiff")
        
        let recordSettings = [AVSampleRateKey: 44100.0,
            AVNumberOfChannelsKey: 2,
            AVEncoderAudioQualityKey: AVAudioQuality.Min.rawValue,
            AVEncoderBitRateKey: 16
        ]
        
        let audioSession: AVAudioSession = AVAudioSession.sharedInstance()
        
        try! audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try! audioRecorder = AVAudioRecorder(URL: soundURL, settings: recordSettings as! [String : AnyObject])
        audioRecorder.delegate = self
        audioRecorder.prepareToRecord()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDismissTap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func audioplayBack(soundName: String) {
        var audioSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(soundName, ofType: "aiff")!)
        try! audioPlayer = AVAudioPlayer(contentsOfURL: audioRecorder.url)
        audioPlayer.delegate = self
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    @IBAction func onVoiceTap(sender: AnyObject) {
        audioControlsView.hidden = false
    }
    
    @IBAction func onStart(sender: AnyObject) {
        audioRecorder.record()
    }
    
    @IBAction func onStop(sender: AnyObject) {
        audioRecorder.stop()
    }
    
    @IBAction func onPlay(sender: AnyObject) {
        audioplayBack("")
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
    }
    
    @IBAction func onDogTap(sender: AnyObject) {
        
        eyesImageView.image = animatedImage
        Utils().delay(1.0) {
            self.eyesImageView.image = nil
        }
    }

}
