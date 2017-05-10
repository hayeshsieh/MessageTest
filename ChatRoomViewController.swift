//
//  ChatRoomViewController.swift
//  MessageTest
//
//  Created by 謝旭棠 on 2017/5/10.
//  Copyright © 2017年 謝旭棠. All rights reserved.
//

import UIKit
import SwiftSocket

class ChatRoomViewController: UIViewController {
    
    @IBOutlet weak var chatTextView: UITextView!
    
    let host = "yahoo.com"
    let port = 80
    var client:TCPClient?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        client = TCPClient(address: host, port: Int32(80))

        // Do any additional setup after loading the view.
    }
   
    @IBAction func sentButtonAction(_ sender: Any) {
        guard let client = client else{return}
        
        switch client.connect(timeout: 10) {
        case .success:
            
            appendToTextField(String : "Connected to host \(client.address)")
        default:
            <#code#>
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
