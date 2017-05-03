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
        UINavigationControllerDelegate
    {
    
    @IBOutlet weak var imagePicker: UIImageView!
    
    
    @IBAction func openCameraButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        else{
            print("can't find camera");
        }
        func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
            print("didFinishPickingImage")
            self.imagePicker.image = image // 到imageview顯示
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil) // 儲存圖片
            picker.dismiss(animated: true, completion: nil) // 退出相機
        }
        
        func imagePickerControllerDidCancel(picker: UIImagePickerController) {
            print("imagePickerControllerDidCancel")
            picker.dismiss(animated: true, completion: nil) // 退出相機
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

