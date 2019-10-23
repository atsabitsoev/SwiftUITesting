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
        
        Text("hello")
        
    }
}

struct CompanyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetailView(company: Company(title: "title", subTitle: "subtitle", imageName: "imageName"))
    }
}
