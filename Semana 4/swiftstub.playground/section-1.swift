import Foundation


enum Velocidades: Int {
        case Apagado = 0, VelocidadBaja = 20,
        VelocidadMedia = 50, 
        VelocidadAlta = 120
        
        init( velocidadInicial : Velocidades ){
            self = velocidadInicial
        }
        
}



class Auto{

    var velocidad: Velocidades
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        switch self.velocidad {
            case .Apagado:
            self.velocidad = .VelocidadBaja     
             return(self.velocidad.rawValue, "Velocidad Baja")
            case .VelocidadBaja:
              self.velocidad = .VelocidadMedia  
             return(self.velocidad.rawValue, "Velocidad Media")
            case .VelocidadMedia:
             self.velocidad = .VelocidadAlta      
             return(self.velocidad.rawValue, "Velocidad Alta") 
            case .VelocidadAlta:
             self.velocidad = .Apagado   
             return(self.velocidad.rawValue, "Apagado") 
            
        }
        
    }
}

var a = Auto()
var x : (Int , String) = (a.velocidad.rawValue, String(a.velocidad) )
for var i in 1...20{
    print("\(i). ", "\(x.0) , " , "\(x.1)")
    x = a.cambioDeVelocidad()
}


