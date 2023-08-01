import UIKit

// Soal 1 Exercise Var dan Let
print("Soal No. 1")
let hargaBuku: Int = 100_000
var jumlahEksemplar: Int = 2

var totalHarga: Int = hargaBuku * jumlahEksemplar

print("Harga yang harus dibayar adalah Rp\(totalHarga)")

// Soal 2 switch case
// less 24 -> ke Paris
// 24-58 -> ke paris+uang saku
//more 59 -> apresiasi
//more 60 -> pulang aja
print("Soal No. 2")
var solvingTime: Int = 26
switch solvingTime {
case 1:
    print("Your job is done with \(solvingTime) hour. You can go travelling to Paris with your partner and some bonus to one person")
case 1..<24:
    print("Your job is done with \(solvingTime) hours. You can go travelling to Paris with your partner and some bonus to one person")
case 24..<59:
    print("Your job is done with \(solvingTime) hours. You can go to Paris with some bonus money")
case 59..<101:
    print("Your job is done with \(solvingTime) hours. Thanks for finishing your job")
default:
    print("Get your ass out of here!")
}

//Soal No3
//buat function untuk menghitung rata2 dari 3 skor nilai mahasiswa dan panggil
print("Soal No. 3")

func nilaiRataRata(_ nilai1: Double, _ nilai2: Double, _ nilai3: Double) -> Double{
    let rataRata = (nilai1 + nilai2 + nilai3) / 3.0
    return rataRata
    
}
var nilaiMahasiswa1: Double = 70
var nilaiMahasiswa2: Double = 81.5
var nilaiMahasiswa3: Double = 95
let nilaiMean = nilaiRataRata(nilaiMahasiswa1, nilaiMahasiswa2, nilaiMahasiswa3)
print("Nilai rata-rata adalah \(nilaiMean)")

//Soal no4
//hitung luas lingkaran dan keliling
print("Soal No. 4")
func luasLingkaran(_ jariJari: Double) -> Double{
    let luas = Double.pi * jariJari * jariJari
    return luas
}
func kelilingLingkarang(_ jariJari: Double) -> Double{
    let keliling = Double.pi * 2 * jariJari
    return keliling
}
var jariJari: Double = 14
let luas = luasLingkaran(jariJari)
let keliling = kelilingLingkarang(jariJari)
print("Jari-jari lingkaran: \(jariJari) cm")
print("Luas lingkaran: \(luas) cm2")
print("Keliling lingkaran: \(keliling) cm")

//Soal no5
//bikin kelas Olahraga yang isinya nama cabor, kategori (tim/individu), jumlah pemain)
//punya func cetakInfo -> print atribut bernarasi
print("Soal No. 5")
class Olahraga {
    let namaCabor: String
    let kategori: String
    let pemain: Int
    
    init(_ namaCabor: String, _ kategori: String, _ pemain: Int){
        self.namaCabor = namaCabor
        self.kategori = kategori
        self.pemain = pemain
    }
    
    func cetakInfo() -> String {
        let info = ("Olahraga \(namaCabor) merupakan olahraga \(kategori) dengan pemain \(pemain) orang")
        return info
    }
}
let sepakbola = Olahraga("Sepak Bola", "Tim", 11)
let infoSepakbola = sepakbola.cetakInfo()
print(infoSepakbola)

