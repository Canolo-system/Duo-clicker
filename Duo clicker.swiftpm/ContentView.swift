import SwiftUI
import UIKit
import AVFoundation
import Foundation
import Observation


@Observable 
class nameG {
    var sol: String = UserDefaults.standard.string(forKey: "miko") ?? ""{
        didSet {
            UserDefaults.standard.set(sol, forKey: "miko")
        }
    }
}
let nombreG = nameG()


@Observable 
class neimLG{
    var hallo: String = UserDefaults.standard.string(forKey: "sushi") ?? ""{
        didSet {
            UserDefaults.standard.set(hallo, forKey: "sushi")
        }
    }
}
let nombreLG = neimLG()




@Observable 
class colorGlobalN {
    var colorN: Color = .red
}
let tcolornword = colorGlobalN()





@Observable 
class nombre {
    var six: String = UserDefaults.standard.string(forKey: "hayao") ?? ""{
        didSet {
            UserDefaults.standard.set(six, forKey: "hayao")
        }
    }
}
let Hombre = nombre()



@Observable 
class colorsito{
    var color: Color = .blue
}
let colorsitoide = colorsito()


@Observable 
class Meta{
    var int: Int = UserDefaults.standard.integer(forKey: "agar")   {
        didSet {
            UserDefaults.standard.set(int, forKey: "agar")
        }
    }
}    
let MyMeta = Meta()



@Observable 
class LongMeta{
    
   
    
    var preso: Int = UserDefaults.standard.integer(forKey: "hadoken"){
        didSet {
            UserDefaults.standard.set(preso, forKey: "hadoken")
        }
    }
    
}
let YourMeta = LongMeta()




@Observable
class duracionLongTouch{
    var segundos: Int = UserDefaults.standard.integer(forKey: "shoryuken"){
        didSet {
            UserDefaults.standard.set(segundos, forKey: "shoryuken")
        }
    }
}

 var duracionLargo = duracionLongTouch()






struct Contador: View {
    //cantidad de toques
    @AppStorage("toqueN") private var normales: Int = 0
    @AppStorage("toqueL") private var longPress: Int = 0
    
    
    @State private var nombreN: String = ""
    @State private var nombreL: String = ""
    
  
  
    //color de cada seccion
    @Bindable var colornword = tcolornword
    @Bindable var colorsade = colorsitoide
    
    @Bindable var duracion = duracionLargo
    
    
    @Bindable var Final = MyMeta
    @State private var misDatos = LongMeta()
    @Bindable var klonoa = YourMeta
    @Bindable var kololu = Hombre
    @Bindable var lalaland = nombreG
    @Bindable var mija = nombreLG
    
    @State private var CARAJO = false
    @State private var menuSeleccionado = 0
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .opacity(0.001)
                .onTapGesture{
                    normales += 1
                }
            
                .onLongPressGesture(minimumDuration: 1.3){
                    longPress += 1
                }
            
            
            
            //logra que esta cosa de un mensaje adaptado al color de su seleccion respectiva, ponele un efecto visual y nomas estarias a dos pasos de subir la app
            
            
            
            
            
            
            
            
            
            VStack{
                
                
                
                
                HStack{
                    Button("Configuration") {
                        menuSeleccionado = 1
                        CARAJO = true
                    }
                    .scaledToFit()
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundStyle(.red)
                    
                    Spacer()
                    
                    
                    
                    
                        .padding()
                    
                    
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundStyle(.blue)
                }
                
                
                
                
                
                
                VStack (alignment: .leading){
                    //El titulo
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                    Text("Duo clicker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .scaledToFit()
                        .minimumScaleFactor(0.1)
                    
                    
                    Spacer()
                    Spacer()
                    
                    
                }
                
                
                
                
                
                
                
                
                HStack  (alignment: .center){
                    //muestras visuales de normal y long press
                    VStack{
                        Text("\(normales)") 
                            .scaledToFit()
                            .font(.title)
                            .foregroundStyle(colornword.colorN)
                            .frame(width: 100)
                        
                        if normales == Final.int{
                            
                            Text(lalaland.sol.isEmpty ? "Keep tapping!": lalaland.sol)
                            
                        } 
                        
                        
                        
                    }
                    
                    
                    VStack{
                        
                        Text("\(longPress)")
                            .scaledToFit()
                            .font(.title)
                            .foregroundStyle(colorsade.color)
                        
                            .frame(width: 100)
                        
                        if longPress == klonoa.preso{
                            Text(mija.hallo.isEmpty ? "Took you time?": mija.hallo)
                            
                        }
                        
                    }
                    
                    
                } 
                
                
                
                
                
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                
                // atajos de normal        
                HStack{ 
                    
                    HStack{
                        
                        Spacer()
                            .padding()
                        
                        Button("+10") {
                            withAnimation(.easeOut(duration: 0.2)){
                                
                                normales += 10
                                
                            }
                        }   
                            .foregroundStyle(colornword.colorN)
                            .buttonStyle(.bordered)
                            
                            
                            
                            
                            
                            Button("+100") {
                                
                                withAnimation(.easeOut(duration: 0.2)){
                                    
                                    normales += 100
                                    
                                }
                                
                                
                            }
                            .foregroundStyle(colornword.colorN)
                             .buttonStyle(.bordered)
                            
                            
                            .padding()
                            Button("reset") {
                                withAnimation(.easeOut(duration: 0.2)){
                                    
                                    normales = 0
                                }
                                
                            }
                            .foregroundStyle(colornword.colorN)
                              .buttonStyle(.bordered)
                            
                            
                            
                            Spacer(minLength: 1)
                               
                                .drawingGroup()
                            
                            
                                .padding()
                            
                            
                            
                            
                            
                            //atajos Long press
                            
                         HStack{
                                Spacer()
                                Button("+10") {
                                    withAnimation(.easeOut(duration: 0.2)){
                                        
                                        longPress += 10
                                    }
                                    
                                }
                                .foregroundStyle(colorsade.color)
                                 .buttonStyle(.bordered)
                                
                                
                                
                                Button("+100") {
                                    
                                    withAnimation(.easeOut(duration: 0.2)){
                                        
                                        longPress += 100
                                        
                                    }
                                    
                                    
                                }
                                .foregroundStyle(colorsade.color)
                                 .buttonStyle(.bordered)
                           
                                
                                Button("reset") {
                                    withAnimation(.easeOut(duration: 0.2)){
                                        
                                        longPress = 0
                                    }
                                    
                                }
                                .foregroundStyle(colorsade.color)
                                 .buttonStyle(.bordered)
                                
                            }
                            .drawingGroup()
                              .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                        }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                        //espacio
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        //no pongas opciones aca
                        
                    }
                
                    HStack{
                        
                        VStack{
                            //toma el text fiel y cambialo 
                            
                            Text("your goal now is: \(kololu.six)")
                                .frame(alignment: .center)
                            
                            
                            
                        }
                        
                        
                    }
                    
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                        .padding()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                        .padding()
                    
                    
                    
                    
                }
                
                .sheet(isPresented: $CARAJO){
                    Picker(selection: $menuSeleccionado, label: Text("Picker")) {
                        Text("Config").tag(0)
                        Text("Goals").tag(1)
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    
                    if menuSeleccionado == 0{
                        Ajustes()
                    } else {
                        Metas()
                    }
                    
                } 
         
                .id(menuSeleccionado)
                
            }
            
            
        }
        
        struct Ajustes: View {
            
            @Bindable var colornword = tcolornword
            @Bindable var colorsade = colorsitoide
            
            @Bindable var duracion = duracionLargo
            
            
            var body: some View {
                
                GroupBox{
                    
                    Text("Settings")
                        .font(.title)
                    Spacer()
                    
                    ColorPicker("Normal taps", selection: $colornword.colorN)
                    
                    
                    ColorPicker("Long taps", selection: $colorsade.color)
                    
                        .padding()
                    
                    Text("Long press duration")
                        .font(.title)
                    //arregla el stepper
                    
                    Stepper(value: $duracion.segundos, in: 1 ... 999) {
                        
                        Text("\(duracion.segundos)") 
                    }
                    Spacer(minLength: 2)
                    Spacer()
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Spacer()
                }
                .frame(height: 500)
                .padding(.horizontal)
            }
            
            
        }
        
    
        
        struct Metas: View {
            
            @Bindable var kololu = Hombre
            @Bindable var Final = MyMeta
            @Bindable var klonoa = YourMeta
            @Bindable var lalaland = nombreG
            @Bindable var mija = nombreLG
            
            var body: some View{
                
                
                
                
                
                //NADA DE ESTO FUNCIONA, DALE ARREGLO     
                GroupBox {
                    
                    
                    
                    
                    
                    
                    
                    Text("Goals")
                        .font(.largeTitle)
                    
                        .padding()
                    Text("Normal press")
                    Stepper(value: $Final.int, in: 1...1000) {
                        Spacer()
                        HStack{
                            Spacer()
                            Text("\(Final.int)")
                            Spacer()
                        }
                        Spacer()
                    }
                    
                    
                    TextField("Your message to goals", text: $lalaland.sol)
                        .frame(alignment: .center)
                    
                    Spacer()
                        .padding()
                    
                    
                    Text("Long press goal")
                    Stepper(value: $klonoa.preso, in: 1...1000) {
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Text("\(klonoa.preso)")
                        Spacer()
                    }
                    Spacer()
                        .padding()
                    
                    
                    TextField("Your message to long tap goals", text: $mija.hallo)
                        .frame(alignment: .center)
                    
                    
                        .padding(2)
                    
                    
                        .frame(idealHeight: .infinity)
                    Spacer()
                    
                    
                    
                        .padding()
                    
                    
                    
                    
                    TextField("What do you want to do today?", text: $kololu.six)
                        .frame(alignment: .center)
                    
                    Spacer()
                    
                }
                .frame(height: 500)
                .padding(.horizontal)
            }
        }
    
}

