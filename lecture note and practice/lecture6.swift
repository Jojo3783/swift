//邏輯運算子的運算結果是什麼類型？
//bool
//比較的邏輯運算子是比較什麼類型？
//兩個相同的類型
//結合的邏輯運算子是結合什麼類型？
//bool

/*
寫法 A          寫法 B          你的答案
!(a == b)      (a != b)        Y
(a > b)        (b < a)         Y
!(a > b)       (a <= b)        Y
(!a && b)      (b && !a)       Y
!(a || b)      (b || !a)       N
(b >= a)       (a < b)         N
(a && b || c)  (a && (b || c)) N
*/

// 【ChaoCode】 Swift 基礎篇 6：邏輯運算子實作作業


// 1. 超級名模身死鬥正在尋找嬌小和棉花糖體型的參賽者，報名條件如下：
//      a. 滿 18 歲。
//      b. 身高不限，但 BMI 需至少有 25；或者身高低於 160 公分。
//    請判斷報名者是否符合資格並印出結果。


func 報名檢測(name: String, age: Int, height: Double, weight: Double)
{
    let bmi = weight / ((height / 100) * (height / 100))
    // 👇 bmi 已經算好，請從此行下方開始寫你的判斷程式。
    let bmihave25:Bool = (bmi >= 25)
    let heightbelow160:Bool = (height < 160)
    let ageIs18:Bool = (age >= 18)
    print(((bmihave25 || heightbelow160) && ageIs18) ? "符合報名資格" : "不符合報名資格")
}

報名檢測(name: "安娜", age: 18, height: 180, weight: 60)
報名檢測(name: "泰拉", age: 17, height: 159, weight: 65)
報名檢測(name: "小美", age: 32, height: 172, weight: 86)
報名檢測(name: "佩妮", age: 23, height: 155, weight: 40)
報名檢測(name: "亞妮", age: 25, height: 155, weight: 63)

print("--------------------------")

func 免役資格(name: String, vision: Double, height: Double, weight: Double)
{
    let bmi = weight / ((height / 100) * (height / 100))
    // 👇 bmi 已經算好，請從此行下方開始寫你的判斷程式。（vision 是最佳矯正視力）
    let isNormalVision: Bool = (vision >= 0.6)
    let isNormalWeight: Bool = (bmi >= 16.5 && bmi <= 35)
    let isNormalHeight: Bool = (height >= 155 && height <= 195)
    print((isNormalVision && isNormalHeight && isNormalWeight) ? "要當兵" : "不用當兵")
}

免役資格(name: "亞當", vision: 0.5, height: 180, weight: 60)
免役資格(name: "傑克", vision: 0.6, height: 155, weight: 50)
免役資格(name: "比利", vision: 0.6, height: 195, weight: 108)
免役資格(name: "安迪", vision: 1.0, height: 155, weight: 40)
免役資格(name: "保羅", vision: 1.2, height: 152, weight: 50)
免役資格(name: "小明", vision: 0.8, height: 200, weight: 108)
免役資格(name: "小華", vision: 0.9, height: 160, weight: 96)
免役資格(name: "阿偉", vision: 0.7, height: 182, weight: 50)






