//
//  EditViewController.swift
//  FastttCamera
//
//  Created by Masuhara on 2016/03/11.
//  Copyright © 2016年 net.maushara. All rights reserved.
//

import UIKit
import Photos
import Social

class EditViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction private func didTapCancelButton() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction private func saveInPhotoLibrary() {
        PHPhotoLibrary.sharedPhotoLibrary().performChanges({ () -> Void in
            PHAssetChangeRequest.creationRequestForAssetFromImage(self.image!)
            }) { (succeed, error) -> Void in
                if succeed == true {
                    let alert = UIAlertController(title: "Save Photo", message: "Success to save photo in your photo library.", preferredStyle: .Alert)
                    let okAction = UIAlertAction(title: "OK", style: .Default) {
                        action in
                        print("OK")
                    }
                    alert.addAction(okAction)
                    self.presentViewController(alert, animated: true, completion: nil)
                }
                
                if error != nil {
                    print("error")
                }
        }
    }
    
    @IBAction func shareToTwitter() {
        let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        composeViewController.addImage(self.image!)
        self.presentViewController(composeViewController, animated: true, completion: nil)
    }
    
    @IBAction func shareToFacebook() {
        let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
        composeViewController.addImage(self.image!)
        self.presentViewController(composeViewController, animated: true, completion: nil)
    }
}
