//
//  ViewController.swift
//  AR Webinar MDA
//
//  Created by Fedor Boretsky on 13.09.2020.
//  Copyright © 2020 Fedor Boretsky. All rights reserved.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // Turn On face recognition – Does'nt work on iPhone 6s +
//        let configuration = ARFaceTrackingConfiguration()
//        arView.session.run(configuration)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! ARWebinar.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
