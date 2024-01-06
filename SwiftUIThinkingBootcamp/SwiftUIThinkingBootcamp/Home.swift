//
//  ContentView.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
            TabView {
                Home()
                    .tabItem {
                        Image("home")
                    }
                
                Search()
                    .tabItem {
                        Image("search")
                    }
                
                Grid()
                    .tabItem {
                        Image("grid")
                    }
                
                Person()
                    .tabItem {
                        Image("user")
                    }
            }
            
    }
}

struct Home: View {
    
    @State var homeBackgroundColor: Color = Color(red: 0.13, green: 0.11, blue: 0.11)
    @State var toggleIsOn: Bool = true
    @State var sliderValue: Double = 4
    @State var sliderValue2: Double = 3
    @State var selectedDate: Date = Date()
    
    var body: some View {
        
        NavigationView {

            ZStack {

                homeBackgroundColor
                    .ignoresSafeArea()
                

                VStack {
            
                    Image("image 7")
                        .resizable()
                        .frame(width: .infinity, height: UIScreen.main.bounds.height * 0.5)
                        .ignoresSafeArea(edges: .top)
                    
                    Image("Right Side")
                        .offset(x: 130, y: -510)
                    
                    Spacer()
                }

                VStack {

                    Text("Bedroom")
                        .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .fontWeight(.semibold)
                        .font(Font.custom("Manrope", size: 17))
                        .offset(y: -32)


                    Spacer()

                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 24)
                                .frame(width: 169, height: 198)
                                .foregroundColor(Color(red: 0.16, green: 0.14, blue: 0.14))


                            VStack(alignment: .leading) {

                                HStack() {
                                    Text("36%")
                                        .font(Font.custom("Manrope", size: 32))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color(red: 0.97, green: 97, blue: 97))
                                        .padding(.horizontal)
                                        .offset(y: -40)



                                    Image("humidity")
                                        .padding(.horizontal)
                                        .offset(y: -40)

                                }


                                Text("Humidifier Air")
                                    .frame(width: 60)
                                    .font(Font.custom("Manrope", size: 12))
                                    .kerning(0.12)
                                    .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    .padding(.leading)
                                    .offset(y: -30)
                            }


                            VStack {
                                Rectangle()
                                    .frame(width: 130, height: 1)
                                    .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.21))
                                    .padding(.top, 30)
                                    .offset(y: -5)

                                Toggle(
                                    isOn: $toggleIsOn,
                                    label: {
                                        Text("Mode 2")
                                            .font(Font.custom("Manrope", size: 12))
                                            .kerning(0.12)
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    }
                                )
                                .toggleStyle(SwitchToggleStyle(tint: Color(red: 1, green: 0.7, blue: 0.4)))
                                .padding(.top)
                                .padding(.horizontal, 30)
                                .offset(y: -5)

                            }
                            .padding(.top, 100)
                        }


                        ZStack {
                            RoundedRectangle(cornerRadius: 24)
                                .frame(width: 169, height: 198)
                                .foregroundColor(Color(red: 0.16, green: 0.14, blue: 0.14))


                            VStack(alignment: .leading) {

                                HStack() {
                                    Text("73%")
                                        .font(Font.custom("Manrope", size: 32))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color(red: 0.97, green: 97, blue: 97))
                                        .padding(.horizontal)
                                        .offset(y: -40)



                                    Image("clean")
                                        .padding(.horizontal)
                                        .offset(y: -40)

                                }


                                Text("Purifier Air")
                                    .frame(width: 55)
                                    .font(Font.custom("Manrope", size: 12))
                                    .kerning(0.12)
                                    .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    .padding(.leading)
                                    .offset(y: -30)
                            }


                            VStack {
                                Rectangle()
                                    .frame(width: 130, height: 1)
                                    .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.21))
                                    .padding(.top, 30)
                                    .offset(y: -5)

                                Toggle(
                                    isOn: $toggleIsOn,
                                    label: {
                                        Text("On")
                                            .font(Font.custom("Manrope", size: 12))
                                            .kerning(0.12)
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    }
                                )
                                .toggleStyle(SwitchToggleStyle(tint: Color(red: 1, green: 0.7, blue: 0.4)))
                                .padding(.top)
                                .padding(.horizontal, 30)
                                .offset(y: -5)

                            }
                            .padding(.top, 100)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 5)


                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .frame(width: 350, height: 154)
                            .foregroundColor(Color(red: 0.16, green: 0.14, blue: 0.14))
                            .padding(.bottom)

                        VStack(alignment: .leading) {

                            Text("Main light")
                                .font(Font.custom("Manrope", size: 12))
                                .kerning(0.12)
                                .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .padding(.horizontal, 45)

                            HStack {
                                Slider(value: $sliderValue, in: 1...5)
                                    .padding(.horizontal)
                                    .accentColor(Color(red: 1, green: 0.7, blue: 0.4))


                                Image("Lamp")
                            }
                            .padding(.horizontal, 30)

                            Text("Floor lamp")
                                .font(Font.custom("Manrope", size: 12))
                                .kerning(0.12)
                                .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .padding(.horizontal, 45)

                            HStack {
                                Slider(value: $sliderValue2, in: 1...5)
                                    .padding(.horizontal)
                                    .accentColor(Color(red: 1, green: 0.7, blue: 0.4))



                                Image("Tablelamp")
                            }
                            .padding(.horizontal, 30)

                        }
                    }
                }
            }

            .navigationBarItems(
                leading: Image("back"),
                trailing: Image("bell")
            )
        }
    }
}

struct Search: View {
    
    @State var searchBackgroundColor: Color = Color(red: 0.13, green: 0.11, blue: 0.11)
    
    var body: some View {
        ZStack {
            searchBackgroundColor
                .ignoresSafeArea()
            
               
        }
        
    }
}

struct Grid: View {
    
    @State var gridBackgroundColor: Color = Color(red: 0.13, green: 0.11, blue: 0.11)
    
    var body: some View {
        
        ZStack {
            gridBackgroundColor
                .ignoresSafeArea()
        }
    }
}

struct Person: View {
    
    @State var personBackgroundColor = Color(red: 0.13, green: 0.11, blue: 0.11)
    
    var body: some View {
        
        ZStack {
            personBackgroundColor
                .ignoresSafeArea()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
