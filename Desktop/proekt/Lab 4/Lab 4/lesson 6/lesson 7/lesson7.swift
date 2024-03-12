//
//  lesson7.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 21.02.2024.
//

import SwiftUI


struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
}
struct leeson7: View {
    let data = [
        DataModel(id: "0", name: "Птицы", imageName: "1"),
        DataModel(id: "1", name: "Животные", imageName: "2"),
        DataModel(id: "2", name: "Цветы", imageName: "3"),
        DataModel(id: "3", name: "Растения", imageName: "4")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { items in
                    ForEach(0..<2) { item in
                        CollectionView(data: items)
                    }
                    
                }.navigationBarTitle("CollectionView")
            }
        }
    }
    struct CollectionView: View {
        let data: DataModel
        var body: some View {
            VStack {
                HStack {
                    ForEach(0..<2) { items in
                        Spacer()
                        Image(self.data.imageName)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Spacer()
                    }.padding(.bottom, 16)
                }
                HStack {
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                }
            }
        }
    }
}
struct Friend: Hashable {
    let name: String
    let age: Int
    let favouriteColor: Color
}

struct lesson7: View {
    @State
    var items: [Friend] = [
        Friend(name: "Roma", age: 19, favouriteColor: .green),
        Friend(name: "Alex", age: 19, favouriteColor: .green),
        Friend(name: "Alexey", age: 19, favouriteColor: .green),
        Friend(name: "Vova", age: 19, favouriteColor: .green)
    ]
    
    @State var isEditorPresented: Bool = false
    @State var name: String = ""
    @State var age: Int = 0
    @State var color: Color = .white
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.items, id: \.self) { item in
                    HStack {
                        Text(item.name)
                        
                        Text("AGE: \(item.age)")
                        
                        Spacer()
                        
                        Circle()
                            .frame(width: 24, height: 24, alignment: .center)
                            .foregroundColor(item.favouriteColor)
                    }
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("My Friends")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                self.isEditorPresented = true
            }) {
                Text("New")
            })
            .sheet(isPresented: self.$isEditorPresented) {
                NavigationView {
                    Form {
                        TextField("Name", text: self.$name)
                        Stepper(value: self.$age, in: 0...100) {
                            Text("Age: \(self.age)")
                        }
                        ColorPicker("Favourite Color", selection: self.$color)
                        
                        Button(action: {
                            self.isEditorPresented = false
                            self.items.append(Friend(name: self.name, age: self.age, favouriteColor: self.color))
                        }) {
                            Text("Save")
                        }
                    }.navigationTitle("Adding new item...")
                }
            }
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

struct ImageModel: Identifiable {
    let id: Int
    let imageView: String
}




#Preview {
    lesson7()
}
