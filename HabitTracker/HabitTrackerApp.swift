//
//  HabitTrackerApp.swift
//  HabitTracker
//
//  Created by sanmi_personal on 29/04/2021.
//

import SwiftUI

@main
struct HabitTrackerApp: App {
    var activities = Activities()
    var body: some Scene {
        WindowGroup {
            ContentView(activities: activities)
        }
    }
}
