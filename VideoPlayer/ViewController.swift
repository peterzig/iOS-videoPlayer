//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Peter Zaporowski on 26.02.2018.
//  Copyright © 2018 Peter Zaporowski. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func playPressed(_ sender: UIButton) {
        if let filePath = Bundle.main.url(forResource: "video", withExtension: "MOV"){
            
            let video = AVPlayer(url: filePath)
            let videoController = AVPlayerViewController()
            videoController.player = video
            present(videoController, animated: true, completion: {
                video.play()
            })
            
        }
    }
    
}

