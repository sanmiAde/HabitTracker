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
    
        Button(action: {
          isPresentingAddNewActivityForm = true
        }, label: {
            Text("add new activity")
        }).sheet(isPresented: $isPresentingAddNewActivityForm, onDismiss: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=On Dismiss@*/{ }/*@END_MENU_TOKEN@*/, content: {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var activities = Activities()
    static var previews: some View {
        ContentView(activities: activities)
    }
}
