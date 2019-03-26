//
//  ViewController.swift
//  MusicApp
//
//  Created by Mac on 26/03/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController , AVAudioPlayerDelegate{

    
    var audioPalyer : AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    var soundFile = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func musicTabClick(_ sender: UIButton) {
        soundFile = soundArray[sender.tag - 1]
        PaySound()
    }
    func PaySound() {
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        do{
            audioPalyer = try AVAudioPlayer(contentsOf: soundURL!)
            
            audioPalyer.play()
        }
        catch {
            
        }
    }
    
}

