//
//  Activity.swift
//  HabitTracker
//
//  Created by sanmi_personal on 29/04/2021.
//

import Foundation

class Activity: ObservableObject, Identifiable {
    @Published var id: UUID = UUID()
    @Published var name: String
    @Published var description: String
    @Published var numberOfTimesPerformed: Int = 0
    
    init( name: String, description: String) {
        self.name = name
        self.description = description
    }
}


class Activities: ObservableObject {
    @Published var data : [Activity] = [Activity]()
}
