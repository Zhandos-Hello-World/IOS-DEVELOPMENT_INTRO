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
                            self.save()
                        }
                    }.padding(.leading, 5)
                }.padding()
                
                List {
                    ForEach(todoList) { entry in
                        Text(entry.todo)
                    }.onDelete(perform: self.delete)
                }
            }.navigationBarTitle("To do list")
        }.onAppear(perform: load)
    }

    private func save() {
      UserDefaults.standard.set(
        try? PropertyListEncoder().encode(self.todoList), forKey: "myTodosKey"
      )
    }
    private func load() {
        if let todosData = UserDefaults.standard.value(forKey: "myTodosKey") as? Data {
            if let todosList = try? PropertyListDecoder().decode(Array<Item>.self, from: todosData) {
                self.todoList = todosList
            }
        }
    }
    private func delete(at offset: IndexSet) {
        self.todoList.remove(atOffsets: offset)
        save()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
