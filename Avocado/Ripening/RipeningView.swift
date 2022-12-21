//
//  RipeningView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct RipeningView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false)
        {
            VStack{
                Spacer()
                HStack(alignment: .center,spacing: 25) {
                    ForEach(ripeningData)
                    {
                        item in
                        RipeningCardView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView()
    }
}
