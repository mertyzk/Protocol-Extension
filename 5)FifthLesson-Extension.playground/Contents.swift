import UIKit

class Kisi {
    var adi : String?
    var soyadi : String?
    var yasi : Int?
}

extension Kisi{
    func bilgileriGoster() {
        print("Adı: \(adi!), soyadı: \(soyadi!)")
    }
}

var k1 : Kisi = Kisi()
k1.adi = "Ahmet"
k1.soyadi = "Kerem"
k1.bilgileriGoster()
