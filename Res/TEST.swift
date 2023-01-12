//
//  TEST.swift
//  Res
//
//  Created by Salma on 12/01/2023.
//

import SwiftUI

struct TEST: View {
    @FetchRequest(sortDescriptors: []) var info : FetchedResults<Likess>
    var body: some View {
        VStack{
            List(info){ info in
                Text(info.name ?? "unknwon")
                
            }
        }
    }
}

struct TEST_Previews: PreviewProvider {
    static var previews: some View {
        TEST()
    }
}
