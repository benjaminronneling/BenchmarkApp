//
//  SwiftUITests.swift
//  BenchmarkAppUITests
//
//  Created by Macbook Pro on 2023-02-26.
//
import Foundation
import XCTest

final class SwiftUITests: XCTestCase {
    
    let iterationCountForStaticElementsTests = 4;
    let iterationCountForAnimatedElementsTests = 4;
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    
    func testTextPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForStaticElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Texts"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
             
        }
        
    }
    
    func testButtonsPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForStaticElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Buttons"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
        }
    }
    
    
    func testImagesPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForStaticElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    
    
    func testBlurPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForStaticElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Blur"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
        }
    }
    
    
    
    func testListPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
         
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForStaticElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
             
            app.buttons["List (CollectionView)"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
            
        }
    }
    
    
    
    func testTextAnimationPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForAnimatedElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Animation: text"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    
    
    
    func testButtonAnimationPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForAnimatedElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Animation: buttons"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    
    
    func testImageAnimationPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForAnimatedElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Animation: images"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    
    func testBlurAnimationPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForAnimatedElementsTests
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app)],
                options: measureOptions) {
            
            app.buttons["Animation: blur"].tap()
            stopMeasuring()
            app.terminate()
            app.launch()
            app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        }
    }
    
    func testScrollAnimationPerformanceInSwiftUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["SwiftUI"].tap()
        app.buttons["Animation: scroll"].tap()
        
        let measureOptions = XCTMeasureOptions()
        measureOptions.invocationOptions = [.manuallyStop]
        measureOptions.iterationCount = iterationCountForAnimatedElementsTests
        
        let list =  app.collectionViews.firstMatch
        
        measure(metrics: [XCTCPUMetric(application: app), XCTMemoryMetric(application: app), XCTOSSignpostMetric.scrollDecelerationMetric],
                options: measureOptions) {
            
            list.swipeUp(velocity: .fast)
            stopMeasuring()
            list.swipeDown(velocity: .fast)
        }
    }
    
}
