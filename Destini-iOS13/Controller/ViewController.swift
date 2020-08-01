//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func optionButtonClicked(_ sender: UIButton) {
        if sender.tag == 1 {
            storyBrain.updateStory(choice: 1)
        } else if sender.tag == 2{
            storyBrain.updateStory(choice: 2)
        }
        updateUI()
    }
    
    func updateUI(){
        let currStory = storyBrain.getStory()
        
        storyLabel.text = currStory.title
        choice1Button.setTitle(currStory.choice1, for: .normal)
        choice2Button.setTitle(currStory.choice2, for: .normal)
    }
}

