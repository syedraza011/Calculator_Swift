//
//  ContentView.swift
//  Calculator
//
//  Created by Syed Raza on 6/12/23.
//

import SwiftUI
enum CalcButton: String{
    case one="1"
    case two="2"
    case three="3"
    case four="4"
    case five="5"
    case six="6"
    case seven="7"
    case eight="8"
    case nine="9"
    case zero="0"
    case add="+"
    case subtract="-"
    case divide="/"
    case multiply="X"
    case equal="="
    case clear="AC"
    case decimal="."
    case percent="%"
    case negative="-/+"
   
}
struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Text("0123")
                        .bold()
                        .font(.system(size:64))
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
