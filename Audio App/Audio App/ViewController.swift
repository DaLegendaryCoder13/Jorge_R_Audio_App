//
//  ViewController.swift
//  Audio App
//
//  Created by Student on 8/10/21.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    //MARK: - Instantiate the Audio Player
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Tell us where the sound file is
        let sound = Bundle.main.path(forResource: "Mr. Goatee - Lost in Paradise (From _Jujutsu Kaisen_) myfreemp3.vip  (1)", ofType: "mp3")

        //MARK: - Handle any errors or issues
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }
    
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
}
