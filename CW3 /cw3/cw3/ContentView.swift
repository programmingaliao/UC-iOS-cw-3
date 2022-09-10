//
//  ContentView.swift
//  cw3
//
//  Created by Ali Al-Otaibi on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var grade = ""
    
    
    
    var body: some View {
        ZStack{
            Image("skyblue")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("حاسبة الدرجات ").font(.largeTitle).foregroundColor(.black)
                
                
                
                
                Image("download (1)")
                TextField("ادخل درجاتك", text:$text).foregroundColor(.white)
                Text("لقد حصلت علي الدرجة").foregroundColor(.black).bold().italic()
                Spacer()
                Text("احسب درجتي")
                    .onTapGesture {
                        if (Int(text) ?? 0 ) >= 90 {
                            grade = "Excellent"
                            
                        }
                        else if (Int(text) ?? 0 ) >= 80 {
                            grade = "Very good"
                        }
                        else if (Int(text) ?? 0 ) >= 70 {
                            grade = "Average"
                            
                        }
                        else if (Int(text) ?? 0 ) >= 60 {
                            grade = "Below Average"
                            
                        }
                        else if (Int(text) ?? 0 ) >= 50 {
                            grade = "Below Pass"
                            
                        } else {
                            grade = "Try again"
                            
                        }
                    }
                Text(grade)
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
