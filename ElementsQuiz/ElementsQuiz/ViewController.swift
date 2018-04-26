//
//  ViewController.swift
//  ElementsQuiz
//
//  Created by sanjeev jain on 10/02/18.
//  Copyright © 2018 sanjeev jain. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex+=1;
        if(currentElementIndex==4)
        {
            currentElementIndex=0;
        }
        updateElement()
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        labelView.text = elementList[currentElementIndex];
        //updateElement()
    }
    
    let elementList = ["Carbon", "Chlorine", "Gold", "Sodium"];
    var currentElementIndex = 0;
    
    func updateElement()
    {
        labelView.text = "?";
        let elementName = elementList[currentElementIndex];
        let image = UIImage(named: elementName);
        imageView.image = image;
    }
    

}

