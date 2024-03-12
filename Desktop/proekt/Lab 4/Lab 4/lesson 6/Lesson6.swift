//
//  Lesson6.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 09.02.2024.
//

import SwiftUI

struct Lesson6: View {
    @State private var users = ["Иван", "Мария", "Игорь"]
    @State var item: String = ""
    @State var showSheet = false

    
    var body: some View {
        NavigationView{
            List{
                ForEach(users, id:\.self){user in
                    Text(user)
                }.onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationBarItems(
                leading: Button("Add"){
                    showSheet.toggle()
            }, trailing:
                EditButton())
            .sheet(isPresented: $showSheet){
                VStack{
                    TextField("Введите элемент",text: $item)
                    Button("Добавить"){
                        users.append(item)
                        showSheet.toggle()
                    }
                }
            }
        }
    }
    func delete(at offsets: IndexSet){
        users.remove(atOffsets: offsets)
    }
    func move(from source: IndexSet, to destination: Int){
        users.move(fromOffsets: source, toOffset: destination)
    }

}



#Preview {
    Lesson6()
}
