//
//  ContentView.swift
//  page4
//
//  Created by Sara bayan alharbi on 03/04/1444 AH.
//

import SwiftUI

import UIKit
struct ContentView: View {
    @State var EventName = ""
    @State var Notes = ""
    @State private var EventDate = Date()
    @State private var Expand = false
    @State var title =  "Remind Me"

   
    var body: some View {
        
        NavigationView{
         
                VStack(alignment: .center, spacing: 20){
                    Form{
                        Section{
                            TextField("Event Name",text: $EventName)
                                

                            DatePicker("Event At", selection: $EventDate)

                            HStack{
                                Text(title)
                                Image(systemName: Expand ? "chevron.up" : "chevron.down")

                            }.onTapGesture {
                                self.Expand.toggle()
                            }
                            if Expand {
                                Button(action:{
                                    print("day before")
                                    title = "day before"
                                    self.Expand.toggle()
                                }){
                                    Text("day before")
                                        .padding()
                                        .foregroundColor(.gray)
                                }
                                Button(action:{
                                    print("Week before")
                                    title = "Week before"
                                    self.Expand.toggle()
                                }){
                                    Text("Week before")
                                        .padding()
                                        .foregroundColor(.gray)
                                }
                                Button(action:{
                                    print("Month before")
                                    title = "Month before"
                                    self.Expand.toggle()

                                }){
                                    Text("Month before")
                                        .padding()
                                        .foregroundColor(.gray)
                                }
                            }
                            Section{
                                TextField("Notes", text: $Notes)
                                    .foregroundColor(.black)
                            }
                            
                        }

                    }

                }
              
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Delete"){
                            print("Delete Tapd")
                        }
                        .foregroundColor(.red)
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Done"){
                            print("Done Tapd")
                        }
                        
                    }
                }
                .navigationTitle("Add Your Event")
            }
        }
        }
    

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

