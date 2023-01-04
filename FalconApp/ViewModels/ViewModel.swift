//
//  ViewModel.swift
//  FalconApp
//
//  Created by McBook on 04.01.2023.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var productsList = [Products]()
    
    func getData() {
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("products").getDocuments { snaphot, error in
            // Check for errors
            if error == nil {
                // No errors
                if let snaphot = snaphot {
                    DispatchQueue.main.async {
                        self.productsList = snaphot.documents.map { d in
                            return Products(id: d.documentID,
                                            title: d["title"] as? String ?? "",
                                            price: d["price"] as? String ?? "",
                                            description: d["description"] as? String ?? ""
                            )
                        }
                    }
                }
            }
            else {
                
            }
            
        }
        
        
    }
}
