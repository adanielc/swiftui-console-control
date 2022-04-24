//
//  ContentView.swift
//  ControlConsole
//
//  Created by Daniel Castillo Bermudez on 24/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State public var round: Int = 0;
    @State public var playerOneCommandPoints: Int = 0;
    @State public var playerTwoCommandPoints: Int = 0;
    @State public var playerOneObjectivePoints: Int = 0;
    @State public var playerTwoObjectivePoints: Int = 0;
    
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    VStack{
                        Text("Ronda")
                            .font(.title)
                        HStack{
                            Button(action: {round-=1}, label: {
                                Image(systemName: "minus")
                            })
                            Text("\(round)")
                                .bold()
                                .font(.title)
                            Button(action: {round+=1}, label: {
                                Image(systemName: "plus")
                            })
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Commnad Points")
                            .font(.title)
                        HStack{
                            VStack{
                                Text("Player 1")
                                    .padding()
                                    .font(.title2)
                                HStack{
                                    Button(action: {playerOneCommandPoints-=1}, label: {
                                        Image(systemName: "minus")
                                    })
                                    Text("\(playerOneCommandPoints)")
                                        .bold()
                                        .font(.title)
                                    Button(action: {playerOneCommandPoints+=1}, label: {
                                        Image(systemName: "plus")
                                    })
                                }
                            }
                            Spacer()
                            VStack{
                                Text("Player 2")
                                    .font(.title2)
                                    .padding()
                                HStack{
                                    Button(action: {playerTwoCommandPoints-=1}, label: {
                                        Image(systemName: "minus")
                                    })
                                    Text("\(playerTwoCommandPoints)")
                                        .bold()
                                        .font(.title)
                                    Button(action: {playerTwoCommandPoints+=1}, label: {
                                        Image(systemName: "plus")
                                    })
                                }
                            }.padding()
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Objective Points")
                            .font(.title)
                            .padding()
                        HStack{
                            VStack{
                                Text("Player 1")
                                    .padding()
                                    .font(.title2)

                                HStack{
                                    Button(action: {playerOneObjectivePoints-=1}, label: {
                                        Image(systemName: "minus")
                                    })
                                    Text("\(playerOneObjectivePoints)")
                                        .bold()
                                        .font(.title)
                                    Button(action: {playerOneObjectivePoints+=1}, label: {
                                        Image(systemName: "plus")
                                    })
                                }
                            }
                            Spacer()
                            VStack{
                                Text("Player 2")
                                    .font(.title2)
                                    .padding()
                                HStack{
                                    Button(action: {playerTwoObjectivePoints-=1}, label: {
                                        Image(systemName: "minus")
                                    })
                                    Text("\(playerTwoObjectivePoints)")
                                        .bold()
                                        .font(.title)
                                    Button(action: {playerTwoObjectivePoints+=1}, label: {
                                        Image(systemName: "plus")
                                    })
                                }
                            }
                        }
                    }
                    Spacer()
                }
            }
            .background(
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(0.3))
            .navigationTitle("Control Console")
            .navigationBarTitleDisplayMode(.inline)

        }

        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
