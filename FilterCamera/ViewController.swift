//




//  ViewController.swift

//  FilterCamera

//

//  Created by Julie Lee on 2016/03/08.

//  Copyright © 2016年 JulieLee. All rights reserved.

//



import UIKit
import Photos


class ViewController: UIViewController,FastttCameraDelegate,FilterScrollViewDelegate {
    
    var camera: FastttFilterCamera!
    var currentFilter: Filter?
    var passImage: UIImage?
    var filterImageViews = [UIImageView]()
    
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var filterScrollView: FilterScrollView!
    
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //camera.delegate = self
        
        //  self.fastttAddChildViewController(camera)
        
       
        self.currentFilter = Filter.filterWithType(Filter.FastttFilterType.None)
        camera = FastttFilterCamera(filterImage: self.currentFilter?.filterImage)
        camera.view.frame = cameraView.frame
        camera.delegate = self
        camera.cameraDevice = FastttCameraDevice.Rear
        camera.maxScaledDimension = 600
        self.fastttAddChildViewController(camera)
        
        filterScrollView.delegate = self
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func cameraController(cameraController: FastttCameraInterface!, didFinishCapturingImage capturedImage: FastttCapturedImage!) {
        
        passImage = capturedImage.fullImage
        if passImage != nil {
            self.performSegueWithIdentifier("toEdit", sender: nil)
        }
    }
    
    
    
    func cameraController(cameraController: FastttCameraInterface!, didFinishScalingCapturedImage capturedImage: FastttCapturedImage!) {
        
    }
    
    func cameraController(cameraController: FastttCameraInterface!, didFinishNormalizingCapturedImage capturedImage: FastttCapturedImage!) {
        
    }
    
    func filterButtonTapped(button: UIButton) {
        camera.filterImage = Filter.imageForFilterType(Filter.filterTypes[button.tag])
    }
    
    @IBAction private func takePhoto(){
        
        camera.takePicture()
        
    }
    
    @IBAction private func switchcamera(){
        
        if FastttFilterCamera.isCameraDeviceAvailable(FastttCameraDevice.Front){
            
            if camera.cameraDevice == FastttCameraDevice.Front{
                camera.cameraDevice = FastttCameraDevice.Rear
                
            }else {
                camera.cameraDevice = FastttCameraDevice.Front
            }
        }
        
    }
    
    @IBAction private func flash (){
        if FastttFilterCamera.isTorchAvailableForCameraDevice(camera.cameraDevice){
        if camera.cameraTorchMode == FastttCameraTorchMode.Off{
            camera.cameraTorchMode == FastttCameraTorchMode.On
        }else{
            camera.cameraTorchMode = FastttCameraTorchMode.Off
        }
    } else {
        print("Torchmode is currently unavailabele.")
    }
    }
    private func cangeFilter() {
        self.currentFilter = self.currentFilter!.nextFilter()
        camera.filterImage = self.currentFilter!.filterImage
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let editViewController = segue.destinationViewController as! EditViewController
        editViewController.image = passImage
    }
}






