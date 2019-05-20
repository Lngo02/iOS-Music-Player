//
//  ViewController.swift
//  MusicPlayer-iOS-Workshop
//
//  Created by Admin on 2016-09-09.
//  Copyright © 2016 LHL. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, MediaPlayerProtocol {
    
    @IBOutlet var mediaPlayer: MediaPlayer!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var progressView: UIProgressView!
    
   
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var songTitle: UILabel!
    
    
    @IBOutlet weak var totalDuration: UILabel!
    
    @IBOutlet weak var currentTime: UILabel!
    
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var resumeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mediaPlayer.setup()
        
    }
    
    func displaySong(_ song: Song) {
        imageView.image = song.image
        
        //Makes the image circular
        //imageView.layer.cornerRadius = imageView.frame.size.width / 2
        //imageView.clipsToBounds = true
        
        artistLabel.text = song.artist
        songTitle.text = song.title
    }
    
    func displayCompletionPercentage(_ percentComplete: Float) {
        progressView.progress = percentComplete
    }
    
    func convertSecondsToTime(_ seconds: Int) -> String{
        let minutesInt:Int = Int(seconds / 60)
        let secondsInt:Int = Int(seconds%60)
        var minutesString:String = "\(minutesInt)"
        var secondsString:String = "\(secondsInt)"
        if (minutesInt < 10){
            minutesString = "0\(minutesInt)"
        }
        
        if (secondsInt < 10){
            secondsString = "0\(secondsInt)"
        }
        
        return "\(minutesString):\(secondsString)"
        
    }
    
    func displayDuration(_ durationInSeconds: Double){
        if (!durationInSeconds.isNaN && !durationInSeconds.isInfinite){
            let durationInSecondsInt:Int = Int(durationInSeconds)
            
            totalDuration.text = convertSecondsToTime(durationInSecondsInt)
        }
    }
    
    func displayCurrent(_ currentTimeInSeconds: Double){
        if (!currentTimeInSeconds.isNaN && !currentTimeInSeconds.isInfinite){
            let currentTimeInSecondsInt: Int = Int(currentTimeInSeconds)
            currentTime.text = convertSecondsToTime(currentTimeInSecondsInt)
        }
    }
    
    func displayPlayButton(){
        playButton.isEnabled = true
        playButton.isHidden = false
    }
    
    func hidePlayButton(){
        playButton.isEnabled = false
        playButton.isHidden = true
    }
    
    func displayPauseButton(){
        pauseButton.isEnabled = true
        pauseButton.isHidden = false
    }
    
    func hidePauseButton(){
        pauseButton.isEnabled = false
        pauseButton.isHidden = true
    }
    
    func displayResumeButton(){
        resumeButton.isEnabled = true
        resumeButton.isHidden = false
    }
    
    func hideResumeButton(){
        resumeButton.isEnabled = false
        resumeButton.isHidden = true
    }
    
    
    
    
}

