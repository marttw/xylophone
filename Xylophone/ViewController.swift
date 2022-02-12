//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }    
}



/*
 @IBAction func animateButton(sender: UIButton) {
     
     sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
     
     UIView.animate(withDuration: 1.0,
                    delay: 0,
                    usingSpringWithDamping: CGFloat(0.20),
                    initialSpringVelocity: CGFloat(3.0),
                    options: UIView.AnimationOptions.allowUserInteraction,
                    animations: {
         sender.transform = CGAffineTransform.identity
         sender.backgroundColor = .clear
         
     },
                    completion: { Void in()  }
     )
 }
 */
