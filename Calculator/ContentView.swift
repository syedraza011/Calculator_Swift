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
    let buttons: [[CalcButton]]=[
        [.clear,.negative,.percent,.add],
        [.seven,.eight,.nine, .multiply],
        [.four,.five,.six, .subtract],
        [.one,.two,.three, .equal],
        [.zero,.decimal,.three, .equal],
        
    ]
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
                //buttons going here
                
                ForEach(buttons, id: \.self ) { row in
                    HStack{
                        ForEach(row, id: \.self ){ item in
                            Button (action: {
                                
                            }, label: {Text(item.rawValue)
                                    .frame(width: 70, height:70)
                                    .background(.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(35)
                                
                            })
                        }
                    }
                    
                }
            }
        }
        func buttonWidth(item:CalcButton)-> CGFloat {
            return (UIScreen.main.bounds.width - (5*12)/4())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
