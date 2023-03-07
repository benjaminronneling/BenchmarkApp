//
//  SwiftUITests.swift
//  BenchmarkAppUITests
//
//  Created by Macbook Pro on 2023-02-26.
//
import Foundation
import XCTest

final class SwiftUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    
    func testLotsOfTextPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
                options: measureOptions) {
            
            app.buttons["Texts"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
            //            app.buttons["Back"].tap()
        }
        
    }
    
    func testLotsOfButtonsPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
                options: measureOptions) {
            
            app.buttons["Buttons"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
        }
    }
    
    
    func testLotsOfImagesPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
                options: measureOptions) {
            
            app.buttons["Images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
            //            app.buttons["Back"].tap()
        }
    }
    
    
    
    func testBlurPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
                options: measureOptions) {
            
            app.buttons["Blur"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
        }
    }
    
    
    func testImageAnimationPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollingAndDecelerationMetric],
                options: measureOptions) {
            
            app.buttons["Animation: images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    func testAnimationScrollPerformance() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        app.buttons["Animation: scroll"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = 4
        
        let list =  app.collectionViews.firstMatch
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollDecelerationMetric],
                options: measureOptions) {
            
            list.swipeUp(velocity: .fast)
            stopMeasuring()
            list.swipeDown(velocity: .fast)
        }
    }
    
}
