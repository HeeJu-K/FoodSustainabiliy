//
//  Feedback.swift
//  Farmable
//
//  Created by HeeJu Kim on 3/9/24.
//


import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        
        scanner.scanLocation = 1 // Skip '#' character
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

struct FeedbackPage: View {
//    @Binding var isShowingFeedback: Bool

    
    var body: some View {
        
        GeometryReader { geometry in
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                        Text("Feedback")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                        Spacer()
                    }
                    Spacer().frame(height:30)
                    //Overview Section
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 35, height: 30)
                                .foregroundColor(Color(hex: "#FE97BF"))
                            Text("24")
                                .foregroundColor(Color(hex: "#FE97BF"))
                        }
                        Spacer()
                        VStack{
                            Spacer().frame(height:4)
                            Image(systemName: "quote.bubble")
                                .resizable()
                                .frame(width: 35, height: 30)
                                .foregroundColor(Color(hex: "#B8CF88"))
                            Text("2")
                                .foregroundColor(Color(hex: "#B8CF88"))
                        }
                        Spacer()
                    }
                    
                    //Customer Section
                    Text("Love from Customers")
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                    // one review item
                    Group{
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:"#9E896A"))
                                .frame(height: geometry.size.height*0.25)
                                .cornerRadius(20)
                            HStack{
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("Loved the freshness! Thanks for making this amazing squash!")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Text("Customer of Stone Burner Restaurant")
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                .frame(width: geometry.size.width*0.8, height: geometry.size.height*0.2)
                                Spacer()
                            }
                            .frame(height: geometry.size.height*0.25)
                        }
                    }
                    Spacer()
                        .frame(height: 50)
                    Text("Feedback from Restaurants")
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                    // One review item
                    Group{
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:"#F5EAC3"))
                                .frame(height: geometry.size.height*0.25)
                                .cornerRadius(20)
                            HStack{
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("The Potatoes are amazing, do you have sweet potatoes as well?")
                                        .font(.system(size: 30))
                                        .foregroundColor(Color(hex:"#033606"))
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Text("Head Shef of Stone Burner Restaurant")
                                            .foregroundColor(Color(hex:"#033606"))
                                    }
                                }
                                .frame(width: geometry.size.width*0.8, height: geometry.size.height*0.2)
                                Spacer()
                            }
                            .frame(height: geometry.size.height*0.25)
                        }
                    }
                }
                .frame(width: geometry.size.width*0.9)
                Spacer()
            }
        }
    }
}

struct FeedbackPage_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackPage()
    }
}
