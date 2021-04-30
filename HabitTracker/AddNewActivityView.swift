//
//  AddNewActivityView.swift
//  HabitTracker
//
//  Created by sanmi_personal on 29/04/2021.
//

import SwiftUI

struct AddNewActivityView: View {
    @State var name  = ""
    @State var description = ""
    @ObservedObject var activities : Activities
    @Binding var isPresentingAddNewActivityForm : Bool
    
    var body: some View {
        VStack( spacing: 20) {
            TextField("Enter the name of the activity", text: $name)
                .padding()
            TextField("Describe the activity", text:  $description)
                .padding()
            Button(action: {
                let activity = Activity(name: name, description: description)
                activities.data.append(activity)
               isPresentingAddNewActivityForm = false
            }, label: {
                Text("Add new activity")
            })
            .padding()
            
        }
       
    }
}

struct AddNewActivityView_Previews: PreviewProvider {
    static var activities = Activities()
    @State  static  var isPresentingAddNewActivityForm : Bool = false
    static var previews: some View {
        AddNewActivityView(activities: activities,  isPresentingAddNewActivityForm: $isPresentingAddNewActivityForm)
    }
}
