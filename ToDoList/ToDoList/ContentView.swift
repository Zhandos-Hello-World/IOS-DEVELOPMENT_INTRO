//
//  ContentView.swift
//  ToDoList
//
//  Created by Zhandos Baimurat on 22.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var todoList: [Item] = []
    @State private var todo: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New to do", text: $todo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add") {
                        if (!self.todo.isEmpty) {
                            todoList.append(Item(todo: self.todo))
                            self.todo = ""
                        }
                    }.padding(.leading, 5)
                }.padding()
                
                List {
                    ForEach(todoList) { entry in
                        Text(entry.todo)
                    }
                }
                
                
            }.navigationBarTitle("To do list")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
