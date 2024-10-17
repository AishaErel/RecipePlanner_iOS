//
//  ToDoListItemsView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String) {
        // users/<id>/todos/<entries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId))
        
    }
    var body: some View {
        NavigationView {
            
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                // whenever uses tabs this
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                        .listStyle(PlainListStyle())
                }
               
            .navigationTitle("Your Recipe Planner ")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                // the content it is going to be showing is NewItemView
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
                
            }
        }
    }
    }


#Preview {
    ToDoListView(userId: "Qcf1rps0BfMk0GyEw5ha14OHfK83")
    
}
