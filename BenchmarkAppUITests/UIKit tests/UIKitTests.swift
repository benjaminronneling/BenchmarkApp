//
//  UIKitTests.swift
//  UIKitTests
//
//  Created by Macbook Pro on 2023-02-25.
// xcodebuild test -project BenchmarkApp.xcodeproj -scheme "BenchmarkApp" -destination 'platform=iOS,id=00008020-000A5CA011C1002E'
// set -o pipefail && xcodebuild test -project BenchmarkApp.xcodeproj -scheme "BenchmarkApp" -destination 'platform=iOS,id=00008020-000A5CA011C1002E' | xchtmlreport -json TestResults
// xchtmlreport TestResults.xcresult
// xchtmlreport -j TestResults
// xchtmlreport -json TestResults

import XCTest
import Foundation

final class UIKitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
 

//    func testExample() throws {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
     
    
    func testLotsOfTextPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Texts"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
//           app.navigationBars["UIKit"].buttons["UIKit"].tap()
        }
        
    }
    
    func testLotsOfButtonsPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Buttons"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
//           app.navigationBars["UIKit"].buttons["UIKit"].tap()
        }
        
    }
    
    func testLotsOfImagesPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
//           app.navigationBars["UIKit"].buttons["UIKit"].tap()
        }
        
    }
    
    func testBlurPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Blur"].tap()
            stopMeasuring()
            app.terminate()
            app.launch() 
        }
        
    }
    
    
    func testScrollingAnimationPerformance() throws {
        let app = XCUIApplication()
        app.launch()
//        app.staticTexts["Collection View"].tap()
        app.staticTexts["Texts"].tap()
        
        let foodCollection = app.collectionViews.firstMatch
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric, XCTCPUMetric(application: app)],
            options: measureOptions) {
             
            foodCollection.swipeUp(velocity: .fast)
            stopMeasuring()
            foodCollection.swipeDown(velocity: .fast)
        }
    }
    
    
    
    func testAnimationImagesPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Animation: images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
        }
        
    }
    
    
    func testAnimatedBlurredViewsPerformance() throws {
        let app = XCUIApplication()
        app.launch()
          
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
          

        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
            options: measureOptions) {
            
           app.staticTexts["Animation: blur"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
        }
        
    }
    
    
    func testAnimationScrollPerformance() throws {
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Animation: scroll"].tap()
        
        let foodCollection = app.collectionViews.firstMatch
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4

        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric, XCTCPUMetric(application: app)],
            options: measureOptions) {
             
            foodCollection.swipeUp(velocity: .fast)
            stopMeasuring()
            foodCollection.swipeDown(velocity: .fast)
        }
    }
    
    
}
