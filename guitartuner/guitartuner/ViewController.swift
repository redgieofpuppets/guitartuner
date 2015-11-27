
//
//  ViewController.swift
//  guitartuner
//
//  Created by 20064234 on 27/11/2015.
//  Copyright © 2015 WIT. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    var lowESound:SystemSoundID!
    var aSound:SystemSoundID!
    var dSound:SystemSoundID!
    var gSound:SystemSoundID!
    var bSound:SystemSoundID!
    var highESound:SystemSoundID!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createSounds()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createSounds(){
            var soundID:SystemSoundID = 0
        
            var soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"loweString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID) 
            lowESound = soundID
            soundID++
        
            soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"aString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            aSound = soundID
            soundID++
        
            soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"dString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            dSound = soundID
            soundID++
        
            soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"gString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            gSound = soundID
            soundID++
        
            soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"bString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            bSound = soundID
            soundID++
        
            soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(),"higheString","wav",nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            highESound = soundID
            soundID++
    }


    @IBAction func playLowEstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(lowESound)
    }
    
    @IBAction func playAstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(aSound)
    }
    
    @IBAction func playDstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(dSound)
    }
    @IBAction func playGstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(gSound)
    }
    @IBAction func playBstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(bSound)
    }
    @IBAction func playHighEstring(sender: AnyObject) {
        AudioServicesPlaySystemSound(highESound)
    }
}

