//
//  EnvironmentValues+Extension.swift
//  StepperView
//
//  Created by Venkatnarayansetty, Badarinath on 4/17/20.
//

import Foundation
import SwiftUI

// MARK: - Environment values configuration for standard size margins, can be used across the app.
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
    var steps: [AnyView] {
        get { self[StepsKey.self] }
        set { self[StepsKey.self] = newValue }
    }
    
    var alignments: [StepperAlignment] {
        get { self[AlignmentKey.self] }
        set { self[AlignmentKey.self] = newValue }
    }
    
    var indicationType: [StepperIndicationType<AnyView>] {
        get { self[IndicatorKey.self] }
        set { self[IndicatorKey.self] = newValue }
    }
    
    var stepperMode: StepperMode {
        get { self[StepIndicatorMode.self] }
        set { self[StepIndicatorMode.self] = newValue }
    }
    
    var spacing: CGFloat {
        get { self[Spacing.self] }
        set { self[Spacing.self] = newValue }
    }
    
    var stepLineOptions: StepperLineOptions {
        get { self[StepLineOptions.self] }
        set { self[StepLineOptions.self] = newValue }
    }
        
    var pitstopSteps: [AnyView] {
        get { self[PitStopsKey.self] }
        set { self[PitStopsKey.self] = newValue }
    }
    
    var pitStopLineOptions: PitStopLineOptions {
        get { self[PitStopLineOptionsKey.self] }
        set { self[PitStopLineOptionsKey.self] = newValue }
    }
}

// MARK: - Environment Key for Steps
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct StepsKey: EnvironmentKey {
    static var defaultValue = [AnyView]()
}

// MARK: - Environment Key for alignments
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct AlignmentKey: EnvironmentKey {
    static var defaultValue = [StepperAlignment]()
}

// MARK: - Environment Key for Indicators
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct IndicatorKey: EnvironmentKey {
    static var defaultValue = [StepperIndicationType<AnyView>]()
}

// MARK: - Environment Key for StepIndicatorMode
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct StepIndicatorMode: EnvironmentKey {
    static var defaultValue = StepperMode.vertical
}

// MARK: - Environment Key for Spacing
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct Spacing: EnvironmentKey {
    static var defaultValue:CGFloat = 30.0
}

// MARK: - Environment Key for Line Options
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct StepLineOptions: EnvironmentKey {
    static var defaultValue:StepperLineOptions = StepperLineOptions.defaults
}

// MARK: - Environment Key for Steps
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct PitStopsKey: EnvironmentKey {
    static var defaultValue = [AnyView]()
}

// MARK: - Environment Key for Steps
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct PitStopLineOptionsKey: EnvironmentKey {
    static var defaultValue:PitStopLineOptions = PitStopLineOptions.defaults
}
