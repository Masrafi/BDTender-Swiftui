//
//  AllTender.swift
//  BDTender
//
//  Created by user on 3/21/23.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct AllTender: View {
    var body: some View {
                ScrollView {
                    ZStack{
                        TenderDetails()
                    }
                }
        
        }
    }


struct AllTender_Previews: PreviewProvider {
    static var previews: some View {
        AllTender()
    }
}

