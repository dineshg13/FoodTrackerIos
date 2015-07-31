//
//  ViewController.swift
//  Food Tracker
//
//  Created by Dinesh Gurumurthy on 7/28/15.
//  Copyright © 2015 Dinesh Gurumurthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var setDefaultLabelText: UIButton!;

    
    @IBOutlet weak var nameTextField: UITextField!;
    
    
    @IBOutlet weak var mealNameLabel: UILabel!;
    
    @IBOutlet weak var photoViewImage: UIImageView!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text";
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide Keyboard
        textField.resignFirstResponder();
        
        return false;
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        nameTextField.resignFirstResponder();
        
        
    }
}

