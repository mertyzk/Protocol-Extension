import UIKit
import Darwin

protocol VatandasOlma {
    
    var adiSoyadi : String { get set }
    var tcNo : String { get set }
    func selamVer()
    
}

class Turk : VatandasOlma{
    
    var adiSoyadi : String
    
    var tcNo : String
    
    func selamVer() {
        print("Hello. I am \(adiSoyadi) and my identity number: \(tcNo)")
    }
    
    init(adiSoyadi : String, tcNo : String) {
        self.adiSoyadi = adiSoyadi
        self.tcNo = tcNo
    }
    
}


var t1 : Turk = Turk(adiSoyadi: "Ahmet Velikan", tcNo: "11221122112211222")
t1.selamVer()

protocol GelismisVatandaslik : VatandasOlma {
    
    var superZekami : Bool { get set }
    func savas()
}

class Kemalettin : GelismisVatandaslik {
    
    var superZekami: Bool = true
    
    func savas() {
        print("Savaş kötüdür.")
    }
    
    var adiSoyadi: String = "Kemalettin Soyadlı"
    
    var tcNo: String = "000011100001111"
    
    func selamVer() {
        print("Merhaba bu yazı Kemalettin Class'ından türetilmiş ve Selamver fonksiyonu çalıştırılmıştır.")
    }
    
    
}

var k1 : Kemalettin = Kemalettin()
print(k1.superZekami)
k1.superZekami = false
print(k1.superZekami)
k1.selamVer()

protocol SekilHesapla {
    func AlanHesapla() -> Double
    func CevreHesapla() -> Double
}

class Kare : SekilHesapla {
    
    var kenar : Double
    
    init(kenar : Double){
        self.kenar = kenar
    }
    
    func AlanHesapla() -> Double {
        return kenar * kenar
    }
    
    func CevreHesapla() -> Double {
        return 4 * kenar
    }

}

class Daire : SekilHesapla {
    
    var yariCap : Double
    
    init(yariCap : Double){
        self.yariCap = yariCap
    }
    
    func AlanHesapla() -> Double {
        return Double.pi * pow(yariCap, 2)
    }
    
    func CevreHesapla() -> Double {
        return (2 * Double.pi) * yariCap
    }
}

var sekil1 : Kare = Kare(kenar: 20)
print(sekil1.AlanHesapla())
print(sekil1.CevreHesapla())

var sekil2 : Daire = Daire(yariCap: 10)
print(sekil2.CevreHesapla())
print(sekil2.AlanHesapla())
