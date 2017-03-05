//
//  ViewController.swift
//  Iphone Speakers
//
//  Created by admin on 3/5/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var SpeakerButton: UIView!
    @IBOutlet weak var Toolbar: UIToolbar!
    var playButton: UIBarButtonItem!
    var pauseButton: UIBarButtonItem!
    var RewindButton: UIBarButtonItem!


    
    func playButtonTapped() {
        var tempitems = Toolbar.items!
        tempitems[3] = pauseButton
        Toolbar.items = tempitems;
        
    }
    func pauseButtonTapped() {
        var tempitems = Toolbar.items!
        tempitems[3] = playButton
        Toolbar.items = tempitems;
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.play, target: self, action: #selector(ViewController.playButtonTapped))
        pauseButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.pause, target: self, action: #selector (ViewController.pauseButtonTapped))
        var tempitems = Toolbar.items!
        tempitems.insert(playButton, at: 3)
        Toolbar.items = tempitems;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}

