import UIKit

protocol TamirciDelegate {
    func tamirciCagir(sorun : String)
}

class Musteri {
    var delegate : TamirciDelegate?
}

class Tamirci : TamirciDelegate{
    func tamirciCagir(sorun: String) {
        print("\(sorun) adlı problem, tamirci tarafından çözülmüştür.")
    }
}


var m1 : Musteri = Musteri()
var t1 : Tamirci = Tamirci()

m1.delegate = t1 //  musteri bilgisayari bozuldugunda t1'e otomatik haber gidecektir.
m1.delegate?.tamirciCagir(sorun: "mavi ekran")

/* ########################### */
// View controller arasında iletişimi sağlayalım (örnek mantığı)

protocol VeriGondermeDelegate {
    func veriGonder(veri : String)
}


class ViewController1 {
    var delegate : VeriGondermeDelegate?
}

class ViewController2 : VeriGondermeDelegate {
    func veriGonder(veri: String) {
        print("Ben ViewController 2. Getirdiğim veri : \(veri)")
    }
}

var vc1 : ViewController1 = ViewController1()
var vc2 : ViewController2 = ViewController2()

vc1.delegate = vc2
vc1.delegate?.veriGonder(veri: "Butona tıklandı ve veri geldi")

class ViewController3 : VeriGondermeDelegate{
    func veriGonder(veri: String) {
        print("Ben VC3. Ben de gelen verinin harflerini büyütüyorum : \(veri.uppercased())")
    }
}

var vc3 : ViewController3 = ViewController3()
vc1.delegate = vc3
vc1.delegate?.veriGonder(veri: "Kullanıcı adı ahmet")
