//
//  ContentView.swift
//  Test Project 3
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = ""
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Image("Teddy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack{
                    Spacer()
                    Text("Addison Gibbons")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button("Family \nFacts") {
                        let family = ["I have a younger brother.", "I have an older sister.", "My mom has 13 siblings.", "My dad has 9 siblings.", "I am an aunt.", "My brother and I were adopted."]
                        let random = Int.random(in: 0..<family.count)
                        textTitle = family[random]
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    Button("Fun \nHobbies") {
                        let hobbies = ["I love woodburning.", "I love taekwondo.", "I love coin collecting.", "I love reading.", "I love math."]
                        let random = Int.random(in: 0..<hobbies.count)
                        textTitle = hobbies[random]
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    Button("Favorite \nFoods") {
                        let foods = ["I like spaghetti.", "I like pizza.", "I like ice cream.", "I have a sweet tooth.", "Hot dogs are great!", "French fries taste awesome!"]
                        let random = Int.random(in: 0..<foods.count)
                        textTitle = foods[random]
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    Spacer()
                }
                
                Text(textTitle)
            }
            .padding()
            .background(Rectangle().foregroundColor(Color(hue: 0.494, saturation: 0.989, brightness: 1.0)))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
