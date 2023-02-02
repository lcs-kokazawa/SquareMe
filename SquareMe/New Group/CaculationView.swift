//
//  CaculationView.swift
//  SquareMe
//
//  Created by Kiho Okazawa on 2023-02-02.
//

import SwiftUI

struct CaculationView: View {
    
    
    //MARK: Stored properties
    //Keep the inputgiven by user
    @State var inputGiven = ""
    
    
    //MARK: Computed properties
    
    //Covert input given into an optional Double
    var inputGivenAsOptionalDouble: Double? {
        
        //Attempt to create the optional Double
        guard let inputGivenAsOptionalDouble = Double(inputGiven) else {
            //User gave us bad input.. cannot convert to Double
            return nil
        }
        return inputGivenAsOptionalDouble
    }
    var body: some View {
        NavigationView {
            VStack {
                TextField("5.5", text:$inputGiven)
                    .font(.largeTitle)
                    .padding()
            }
            .navigationTitle("Square Me")
        }
        
    }
}

struct CaculationView_Previews: PreviewProvider {
    static var previews: some View {
        CaculationView()
    }
}
