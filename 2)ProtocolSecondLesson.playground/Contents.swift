import UIKit

protocol Goruntu {
    var dosyaAdi : String {get set}
    var dosyaBoyutu : Double {get set}
    var goruntuTipi : String {get set}
    var genislik : Double {get set}
    var yukseklik : Double {get set}
    
    func kaydet()
    func yenidenBoyutlandir(yeniGenislik : Double , yeniYukseklik : Double)
}

class Jpeg : Goruntu{
    
    var dosyaAdi : String
    
    var dosyaBoyutu : Double
    
    var goruntuTipi : String
    
    var genislik : Double
    
    var yukseklik : Double
    
    init(dosyaAdi : String, dosyaBoyutu: Double, goruntuTipi : String, genislik : Double, yukseklik : Double) {
        self.dosyaAdi = dosyaAdi
        self.dosyaBoyutu = dosyaBoyutu
        self.goruntuTipi = goruntuTipi
        self.genislik = genislik
        self.yukseklik = yukseklik
    }
    
    
    
    func kaydet() {
        print("\(dosyaAdi) kaydedildi")
    }
    
    func yenidenBoyutlandir(yeniGenislik: Double, yeniYukseklik: Double) {
        self.genislik = yeniGenislik
        self.yukseklik = yeniYukseklik
        print("\(dosyaAdi) yeniden boyutlandırıldı (JPEG)")
    }
}

var j1 : Jpeg = Jpeg(dosyaAdi: "denemedosya.jpeg", dosyaBoyutu: 2.7, goruntuTipi: "image", genislik: 1368, yukseklik: 768)
j1.kaydet()
j1.yenidenBoyutlandir(yeniGenislik: 500, yeniYukseklik: 500)
print(j1.yukseklik , j1.genislik)

/* ################################################## */
/* ################################################## */
/* ################################################## */

protocol Video {
    var frameRate : Int {get}
    var cozunurluk : Double {get}
}

class Medya : Goruntu , Video {
    
    var dosyaAdi: String
    
    var dosyaBoyutu: Double
    
    var goruntuTipi: String
    
    var genislik: Double
    
    var yukseklik: Double
    
    func kaydet() {
        print("\(dosyaAdi) MEDYA kaydedildi")
    }
    
    func yenidenBoyutlandir(yeniGenislik: Double, yeniYukseklik: Double) {
        genislik = yeniGenislik
        yukseklik = yeniYukseklik
        print("\(dosyaAdi) yeniden boyutlandırıldı (JPEG)")
    }
    
    var frameRate: Int
    
    var cozunurluk: Double
    
    
    init(dosyaAdi : String, dosyaBoyutu: Double, goruntuTipi : String, genislik : Double, yukseklik : Double, frameRate: Int, cozunurluk: Double) {
        self.dosyaAdi = dosyaAdi
        self.dosyaBoyutu = dosyaBoyutu
        self.goruntuTipi = goruntuTipi
        self.genislik = genislik
        self.yukseklik = yukseklik
        self.frameRate = frameRate
        self.cozunurluk = cozunurluk
    }
}

@objc protocol Zaman{
    
    var gun : Int { get set }
    var ay : Int { get set }
    var yil : Int { get set }
    @objc optional var saat : Int { get }
    @objc optional var dakika : Int { get }
    @objc optional var saniye : Int { get }
    
    func toString() -> String
    
}

class KisaTarih : Zaman {
    
    var gun: Int
    
    var ay: Int
    
    var yil: Int
    
    func toString() -> String {
        return "\(gun)/\(ay)/\(yil)"
    }
    
    init(gun : Int, ay : Int, yil : Int){
        self.gun = gun
        self.ay = ay
        self.yil = yil
    }
    
}

class UzunTarih : KisaTarih{
    var saat : Int
    var dakika : Int
    var saniye : Int
    
    init(gun : Int, ay : Int, yil : Int, saat : Int, dakika : Int, saniye: Int) {
        self.saat = saat
        self.dakika = dakika
        self.saniye = saniye
        super.init(gun: gun, ay: ay, yil: yil)
    }
    
    
    override func toString() -> String {
        return super.toString() + " \(saat):\(dakika):\(saniye)"
    }

}

var tarih1 : KisaTarih = KisaTarih(gun: 23, ay: 04, yil: 2022)
var tarih2 : UzunTarih = UzunTarih(gun: 23, ay: 04, yil: 2022, saat: 17, dakika: 19, saniye: 22)

print(tarih1.toString())
print(tarih2.toString())


var tarihler : [AnyObject] = [tarih1,tarih2]

for t1 in tarihler{
    let tarih = t1 as! Zaman
    print(tarih.toString())
    
    if let saat = tarih.saat{
        print("Saat: \(saat) Dakika: \(tarih.dakika!)")
    }
}

