//
//  OrderView.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.appetizers
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                    
                    Button {
                        
                    } label: {
                        MainButton(title: "$99.99 - Place Order")
                            .padding(.bottom, 20)
                    }
                }
                .navigationTitle("🧾 Orders")
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
