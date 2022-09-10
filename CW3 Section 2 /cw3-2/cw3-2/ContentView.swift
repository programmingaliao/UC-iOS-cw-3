//
//  ContentView.swift
//  cw3-2
//
//  Created by Ali Al-Otaibi on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
@State var whole1 = 0
@State var whole2 = 0
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("استغفر الله العظيم ").frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
                        .padding()
                    Text("سبحان الله وبحمده")
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 130)
                        .padding()
                    Text("سبحان الله العظيم").frame(minWidth: 0, maxWidth: .infinity, maxHeight: 140)
                    
                        .padding()
                }
                
                VStack {
                    ExtractedView()
                    
                }
            }
            
            
            
            
            
            
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct ExtractedView: View {
        @Binding var counter1: Int
        var body: some View {
            ZStack {
                Text("\(counter1)")
                
            Circle().frame(width: 100, height: 100, alignment: .leading)
            Circle().frame(width: 100, height: 100, alignment: .leading)
            Circle().frame(width: 100, height: 100, alignment: .leading)
            }
                .onTapGesture {
                    counter1 += 1
    
                }
        }
    }
}
    
    
