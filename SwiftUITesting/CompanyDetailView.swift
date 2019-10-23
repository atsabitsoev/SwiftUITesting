//
//  CompanyDetailView.swift
//  SwiftUITesting
//
//  Created by Ацамаз Бицоев on 23.10.2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import SwiftUI

struct CompanyDetailView: View {
    
    
    init(company: Company) {
        
        self.company = company
    }
    
    
    var company: Company!
    
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                Text("Hello")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("world")
                Spacer()
            }
            .padding()
            Spacer()
            VStack(alignment: .trailing) {
                Text("Middle")
                    .font(.title)
                    .foregroundColor(.red)
                Text("IOS Developer")
                    .font(.body)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .colorScheme(.light)
        }
        
    }
    
}

struct CompanyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetailView(company: Company(title: "title", subTitle: "subtitle", imageName: "imageName"))
    }
}
