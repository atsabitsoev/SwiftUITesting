//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Ацамаз Бицоев on 23.10.2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    
    @State var selectedSegmentIndex = 0
    let segmentTitles = ["Текущие", "Архив", "Черный список"]
    
    
    let currentCompanies = [Company(title: "Title", subTitle: "subtitle", imageName: "imagename"),
                            Company(title: "ООО \"Дом вверх дном\"", subTitle: "ТР0000007", imageName: "")]
    
    
    let leadingItem = Button(action: {
        print("hello")
    }) {
        AnyView(Image(systemName: "magnifyingglass")
            .foregroundColor(.white))
    }
    
    let rightItem = Button(action: {
        print("hello")
    }) {
        AnyView(Image(systemName: "line.horizontal.3.decrease")
            .foregroundColor(.white))
    }
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Color.brightCyan
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Picker(selection: $selectedSegmentIndex, label: Text("Компании")) {
                        ForEach(0..<self.segmentTitles.count) {
                            Text(self.segmentTitles[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    List {
                        ForEach(0..<currentCompanies.count) { currentIndex in
                            NavigationLink(destination: CompanyDetailView(company: self.currentCompanies[currentIndex])) {
                                CompanyCell(company: self.currentCompanies[currentIndex])
                                .edgesIgnoringSafeArea(.all)
                            }
                        }
                    }
                    .colorScheme(.light)
                    .animation(.easeOut)
                    
                }
                .edgesIgnoringSafeArea(.bottom)
                
            }
            .navigationBarTitle("Компании", displayMode: .large)
            .navigationBarItems(leading: leadingItem, trailing: rightItem)
        }
        .colorScheme(.dark)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
