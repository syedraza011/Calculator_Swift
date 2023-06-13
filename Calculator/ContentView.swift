//
//  ContentView.swift
//  Calculator
//
//  Created by Syed Raza on 6/12/23.
//

import SwiftUI

enum CalcButton: String {
    case clear = "C"
    case negative = "+/-"
    case percent = "%"
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    case equal = "="
    case decimal = "."
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    
    var buttonColor: Color {
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .clear, .negative, .percent:
            return .gray
        default:
            return Color(red: 55/255.0, green: 55/255.0, blue: 55/255.0)
        }
    }
}
enum Operation {
    case add, subtract, multiply, divide, equal, none
}
struct ContentView: View {
    @State var value = "0"
    @State var currentOperation : Operation ? .none
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal],
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text(value)
                        .bold()
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                didTap(button: item)
                            }) {
                                Text(item.rawValue)
                                    .frame(width: buttonWidth(item: item), height: buttonHeight())
                                    .background(item.buttonColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(buttonWidth(item: item) / 2)
                            }
                        }
                    }
                }
            }
        }
     
        .frame(maxWidth: .infinity, maxHeight: .infinity) //
    }
    
    func didTap(button: CalcButton) {
        switch button {
        case .add, .subtract, .multiply, .divide, .equal:
            if button == .add {
                self.currentOperation = .add
                self.runningNumber= Int(self.value) ?? 0
                    
                }
            else if button == .subtract {
                self.currentOperation = .add
                self.runningNumber= Int(self.value) ?? 0
                    
                }
            else if button == .multiply {
                self.currentOperation = .add
                self.runningNumber= Int(self.value) ?? 0
                    
                }
            else if button == .divide {
                self.currentOperation = .add
                self.runningNumber= Int(self.value) ?? 0
                    
                }
            else if button == .equal {
                let runningValue =self.runningNumber
                let currentValue= int(self.value) ?? 0
                self.currentOperation = .add
                self.runningNumber= Int(self.value) ?? 0
                    
                }
            }
        case .clear:
            value = "0"
        case .decimal, .negative, .percent:
            break
        default:
           
            if value == "0" {
                value = button.rawValue
            } else {
                value += button.rawValue
            }
        }
    }
    
    func buttonWidth(item: CalcButton) -> CGFloat {
        if item == .zero {
            return (UIScreen.main.bounds.width - (4 * 12))/2
        }
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
    
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


