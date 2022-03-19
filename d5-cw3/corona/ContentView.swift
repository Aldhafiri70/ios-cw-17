//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل


struct ContentView: View {
    var body: some View {
        var people = [
            Covidinfo(fullname: "Rezo al dhfiri", area: "القيروان",numberofdoses: 2),
            Covidinfo(fullname: "Rezo al dhfiri", area: "القيروان",numberofdoses: 2),
            Covidinfo(fullname: "Rezo al dhfiri", area: "القيروان",numberofdoses: 2),
            Covidinfo(fullname: "Rezo al dhfiri", area: "القيروان",numberofdoses: 2)
        ]
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                List(people, id: \.id) { i in
                    VStack{
                        Text("\(i.fullname)")
                        
                        Text("\(i.area)")
                        
                        Text("\(i.numberofdoses)")
                    // عدد الجرعات
               

                Divider()
                }
                VStack{
        // الحالة الثانية
                // الاسم
               Text("")
                // المنطقة
               Text("")
    // عدد الجرعات
               Text("")

                Divider()
                }
                VStack{
              // الحالة الثالثة
                      // الاسم
                     Text("")
                      // المنطقة
                     Text("")
          // عدد الجرعات
                     Text("")
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






