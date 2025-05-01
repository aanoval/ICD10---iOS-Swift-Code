//
//  SearchBar.swift
//  icd10
//
//  Created by sewabareng on 29/01/25.
//

import SwiftUI


struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search code or description", text: $text)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                })
            }
        }
        .padding(.horizontal)
    }
}
