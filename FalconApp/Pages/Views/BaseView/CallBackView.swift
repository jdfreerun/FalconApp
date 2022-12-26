//
//  CallBackView.swift
//  FalconApp
//
//  Created by McBook on 20.12.2022.
//

import SwiftUI

struct CallBackView: View {
    var body: some View {
        
        ZStack {
            HStack {
                Button {
                    //action
                }
            label: {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 2)
                    HStack {
                        Text("У вас возник вопрос? Запросите обратный звонок!")
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        
                        Spacer()
                        
                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                    .background(Color.white.cornerRadius(20))
                   

                }
                .foregroundColor(Color(Resorces.Colors.baseRedColor))
            }
            }
        }
    }
}

struct CallBackView_Previews: PreviewProvider {
    static var previews: some View {
        CallBackView()
    }
}
