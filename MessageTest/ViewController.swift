//
//  ViewController.swift
//  MessageTest
//
//  Created by 謝旭棠 on 2017/5/3.
//  Copyright © 2017年 謝旭棠. All rights reserved.
//

import UIKit


class ViewController:UIViewController,
        UIImagePickerControllerDelegate,
        UINavigationControllerDelegate ,
        UITextFieldDelegate
    {
    
    
    var textInsert : UITextField!
    
    
    @IBOutlet weak var imagePicker: UIImageView!

    //@IBOutlet weak var textInsert: UITextField!
    
    

    @IBAction func openCameraButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        else{
            print("can't find camera");
        }
        func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
            imagePicker.image = image
            self.dismiss(animated: true, completion: nil);
        }
    
   
    }
    @IBAction func openPhotoLibraryButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }

//        @IBAction func ButtonPressed(sender: AnyObject) {
//            label.text = text.text
//        }
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textInsert = UITextField(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        view.addSubview(textInsert)//輸入框
        
        self.textInsert.translatesAutoresizingMaskIntoConstraints = false
        let setting_textInsertX = NSLayoutConstraint(item: textInsert, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: 200.0)
        let setting_textInsertY = NSLayoutConstraint(item: textInsert, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 280.0)

        view.addConstraints([setting_textInsertX , setting_textInsertY])
        
        //self.navigationController?.setNavigationBarHidden(true, animated: true)
        
//        self.text.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //復寫功能函式，當碰觸到螢幕...
    
//    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
//        self.view.endEditing(true)
//    }
//    func textFieldShouldReturn(textField: UITextField!) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//
//
//
}


