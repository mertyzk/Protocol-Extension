import UIKit

class Kisi : Equatable {

    var adiSoyadi : String
    var yasi : Int
    var tcNo : String
    
    init(adiSoyadi : String, yasi : Int, tcNo : String) {
        self.adiSoyadi = adiSoyadi
        self.yasi = yasi
        self.tcNo = tcNo
    }
    
    static func == (lhs: Kisi, rhs: Kisi) -> Bool {
        if lhs.adiSoyadi == rhs.adiSoyadi && lhs.yasi == rhs.yasi && lhs.tcNo == rhs.tcNo{
            return true
        } else {
            return false
        }
    }
    
}

var k1 : Kisi = Kisi(adiSoyadi: "Erhan", yasi: 45, tcNo: "123123123123")
var k2 : Kisi = Kisi(adiSoyadi: "Erhan", yasi: 45, tcNo: "123123123123")

if k1 == k2 {
    print("karşılaştırılan iki kişi aynıdır")
} else {
    print("karşılaştırılan iki kişi aynı değildir!")
}

/* ############################################################################################### */

class Dikdortgen : Comparable {
    static func < (lhs: Dikdortgen, rhs: Dikdortgen) -> Bool {
        if lhs.yukseklik > rhs.yukseklik && lhs.genislik > rhs.genislik{
            return true
        } else {
            return false
        }
    }
    
    static func == (lhs: Dikdortgen, rhs: Dikdortgen) -> Bool {
        if lhs.genislik == rhs.genislik && lhs.yukseklik == rhs.yukseklik{
            return true
        } else {
            return false
        }
    }
    
    
    var genislik : Int
    var yukseklik : Int
    
    init(genislik : Int, yukseklik : Int) {
        self.genislik = genislik
        self.yukseklik = yukseklik
    }
    
    
    
}

var d1 : Dikdortgen = Dikdortgen(genislik: 35, yukseklik: 15)
var d2 : Dikdortgen = Dikdortgen(genislik: 8, yukseklik: 18)

if d1 > d2{
    print("d1 daha büyük bir alana sahiptir")
} else if d1 == d2 {
    print("d1 ve d2 alanı eşittir")
} else{
    print("d2 daha büyük bir alana sahiptir")
}
