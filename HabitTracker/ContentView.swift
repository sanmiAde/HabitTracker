//
//  ContentView.swift
//  HabitTracker
//
//  Created by sanmi_personal on 29/04/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var activities : Activities
    @State var isPresentingAddNewActivityForm = false
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(activities.data) { activity in
                        Text("\(activity.name)")
                    }
                }
            .navigationBarTitle("Activities", displayMode: .inline)
            .toolbar(content: {
                Button(action: {
                  isPresentingAddNewActivityForm = true
                }, label: {
                    Image(systemName: "plus")
                }).sheet(isPresented: $isPresentingAddNewActivityForm, onDismiss: {}, content: {
                    AddNewActivityView(activities: activities, isPresentingAddNewActivityForm: $isPresentingAddNewActivityForm)
                })
            })
        }
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var activities = Activities()
    static var previews: some View {
        ContentView(activities: activities)
    }
}
