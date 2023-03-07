//
//  SwiftUIViewController.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-22.
//

import Foundation

import UIKit
import SwiftUI

class SwiftUIViewController: UIViewController {
    
    var lotsOfTextButton: UIButton!
    var freqUpdatingContentButton: UIButton!
    var collectionViewButton: UIButton!
    var alteringImageButton: UIButton!
    var alteringViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI(){
        
        let swiftUIOptionsView = SwiftUIOptionsView()
//            .environment(\.colorScheme, .dark)
        let host = UIHostingController(rootView: swiftUIOptionsView)
        addChild(host)
        view.addSubview(host.view)
        host.view.frame = self.view.bounds
        host.didMove(toParent: self)
    }
    
    
    
}

