//
//  BidView.swift
//  FalconApp
//
//  Created by McBook on 21.12.2022.
//

import SwiftUI

struct CreateBidView: View {
    @EnvironmentObject private var tabController: TabController


    var body: some View {
            ZStack {
                HStack {
                
                    Button {
                        tabController.open(.bid)
                        }
                    label: {
                        Text("Понравилось увиденное? Оставьте заявку!")
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        
                        Spacer()
                        
                        Image(systemName: "list.clipboard")
                            .resizable()
                            .frame(width: 20, height: 30)
                            .padding()
                    }
                }
                
                .foregroundColor(.white)
                .background(Color(Resorces.Colors.baseRedColor).cornerRadius(20))
            }
    }
}


struct CreateBidView_Previews: PreviewProvider {
    static var previews: some View {
        CreateBidView()
    }
}
