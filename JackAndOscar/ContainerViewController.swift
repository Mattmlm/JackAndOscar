//
//  ContainerViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/18/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit
import AVFoundation

class ContainerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(soundName: String) {
        let audioSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(soundName, ofType: "aiff")!)
        do {
            let audioPlayer = try AVAudioPlayer(contentsOfURL: audioSound)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            print("error")
        }
    }
    
    @IBAction func onDismissTap() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onAudioTap(sender: AnyObject) {
        let viewInfo = CurrentView.instance.getView()
        
        switch viewInfo.number {
        case 1:
            playAudio("Page-01")
        default:
            print("Somethin else")
        }
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
