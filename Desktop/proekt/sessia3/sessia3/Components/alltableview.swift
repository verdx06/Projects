//
//  alltableview.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 26.02.2024.
//

import SwiftUI

struct alltableview: View {
    var body: some View {
        VStack{
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Edit Profile", TextDown: "Name, phone no, address, email ...")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            
            
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "bell", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Edit Profile", TextDown: "Name, phone no, address, email ...")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            
            
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "bell", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Edit Profile", TextDown: "Name, phone no, address, email ...")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "person.crop.circle", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            
            
            .padding(.bottom)
            
            NavigationLink {
                EditProfile()
            } label: {
                tableviewstruct(ImageTable: "bell", TextUp: "Statements & Reports", TextDown: "Download transaction details, orders, deliveries")
                    .foregroundColor(.black)
            }
            .padding(.bottom)
        
        }
    }
}

#Preview {
    alltableview()
    
}
