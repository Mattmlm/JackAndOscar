//
//  ContainerViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/18/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit
import AVFoundation

class ContainerViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    var storyboardController: StorytimeViewController!
    var isAutoPlayOn: Bool = false
    
    var audioPlayer: AVAudioPlayer!
    var audioRecorder: AVAudioRecorder!
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        if (isAutoPlayOn) {
            onAudioTap("start")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "storyTimeSegueIdentifier") {
            self.storyboardController = segue.destinationViewController as! StorytimeViewController
        }
    }
    
    func playAudio(soundName: String) {
        let audioSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(soundName, ofType: "aiff")!)
            try! audioPlayer = AVAudioPlayer(contentsOfURL: audioSound)
            audioPlayer.delegate = self
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
        print("Finished playing")
        self.storyboardController.turnPage()
    }
       
    @IBAction func onDismissTap() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onAudioTap(sender: AnyObject) {
        let viewInfo = CurrentView.instance.getView()
        
        switch viewInfo.number {
        case 1:
            playAudio("Page-01")
        case 2:
            playAudio("Page-02")
        case 3:
            playAudio("Page-03")
        case 4:
            playAudio("Page-04")
        case 5:
            playAudio("Page-05")
        case 6:
            playAudio("Page-06")
        case 7:
            playAudio("Page-07")
        case 8:
            playAudio("Page-08")
        case 9:
            playAudio("Page-09")
        case 10:
            playAudio("Page-10")
        case 11:
            playAudio("Page-11")
        case 12:
            playAudio("Page-12")
        case 13:
            playAudio("Page-13")
        case 14:
            playAudio("Page-14")
        case 15:
            playAudio("Page-15")
        case 16:
            playAudio("Page-16")
        case 17:
            playAudio("Pagr-17")
        case 18:
            playAudio("Page-18")
        case 19:
            playAudio("Page-19")
        default:
            print("Somethin else")
        }
    }
  
}
