//
//  SelectViewController.swift
//  FilterCamera
//
//  Created by Julie Lee on 2016/06/17.
//  Copyright © 2016年 JulieLee. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var imageFromCameraRoll: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
          imageFromCameraRoll.contentMode = .ScaleAspectFit

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Album(sender :AnyObject){
        pickImageFromLibrary()
    }
    func pickImageFromLibrary(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary){
            let controller = UIImagePickerController()
            controller.delegate = self
            controller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
         self.presentViewController(controller, animated: true, completion: nil)
        }
        
        }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo: [String: AnyObject]){
        if didFinishPickingMediaWithInfo[UIImagePickerControllerOriginalImage] != nil{
            imageFromCameraRoll.image = didFinishPickingMediaWithInfo[UIImagePickerControllerOriginalImage] as? UIImage
            
        }
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


