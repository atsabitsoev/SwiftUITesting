//
//  CompanyCell.swift
//  SwiftUITesting
//
//  Created by Ацамаз Бицоев on 23.10.2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import SwiftUI

struct CompanyCell: View {
    
    init(company: Company) {
        self.company = company
    }
    
    var company: Company!
    
    var body: some View {
        
        HStack(spacing: 14) {
            
            Image("CompaniesBus")
                .resizable()
                .frame(width: 54, height: 54, alignment: .leading)
                .padding(.vertical, 10)
            
            VStack(alignment: .leading) {
                Text(company.title)
                Text(company.subTitle)
            }
            
            Spacer()
        }        
    }
}

struct CompanyCell_Previews: PreviewProvider {
    static var previews: some View {
        CompanyCell(company: Company(title: "title", subTitle: "subtitle", imageName: "imagename"))
    }
}
