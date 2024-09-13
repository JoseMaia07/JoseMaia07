import SwiftUI

struct TelaCronogramas: View {
    
    @State private var searchText: String = ""
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return cronogramasList // retorna a lista completa
        } else {
            // filtra os items que contém o texto, ignorando se é MAISCULO ou minusculo
            return cronogramasList.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

    
    var body: some View {
        NavigationStack {
            ZStack {
                // Alterar para uma cor predefinida, por exemplo, cinza
                Color("ColorBG2")
                    .edgesIgnoringSafeArea(.all)
                
                Image("Rectangle31")
                    .padding(.top, -438.0)
                
                
                HStack {
                    Text("Histórico")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorU"))
                        .padding(.top, -370.0)
                    
                   
                        
                    
                    
                }
                .padding()
                
                
                List {
                    TextField("Pesquisar...", text: $searchText)
                        .padding(7)
                        .background(Color.colorBG1)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                        .listRowBackground(Color.black)
                        
                
                    
                    ForEach(filteredItems, id: \.self) { nome in
                        NavigationLink(destination: Text(nome)) {
                            Image(systemName: "circle")
                            Text(nome)
                                .foregroundColor(Color.white)
                                .font(.system(size:24))
                        }
                        .padding()
                        .listRowBackground(Color("ColorBG2"))
                    
                    }
                }
                //Image("Rectangle31")
                .listStyle(.plain)
                .padding(.top, 60)
            
            }
        }
    }
}

#Preview {
    TelaCronogramas()
}


