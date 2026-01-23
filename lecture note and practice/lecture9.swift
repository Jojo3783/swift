//在一串 if 的語法中，else if 和 else 分別最多和最少可以使用幾個？
//else if最少0最多無限,else最少最多1個


import Foundation

// 【ChaoCode】 Swift 基礎篇 9：條件式流程控制——If 實作作業

// 1. 請根據下述的學校入學條件判斷入學申請者能否入學，並印出對印的文字。
// 「這間學校的入學門檻是平均成績須達 80 分，學費為 128,000 元，平均成績達 92 分以上可以以獎學生身份享全額補助入學。」

func 入學申請(名字: String, 平均成績: Int, 存款: Int)
{
    if(平均成績 >= 80 && 存款 >= 128000) {
      print("✅ \(名字) 可以入學。")
    }
    else if(平均成績 >= 92) {
      print("🎉 \(名字) 以獎學生身份入學。")
    }
    else if(平均成績 >= 80 && 存款 < 128000) {
      print("😢 \(名字) 成績達入學門檻，但無法支付學費，不能入學。")
    }
    else if(均成績 < 80){
      print("❌ \(名字) 成績未達入學門檻，不能入學。")
    }
}

入學申請(名字: "保羅", 平均成績: 80, 存款: 128000)
入學申請(名字: "傑克", 平均成績: 92, 存款: 18000)
入學申請(名字: "蘿拉", 平均成績: 95, 存款: 356700)
入學申請(名字: "馬丁", 平均成績: 70, 存款: 152340)
入學申請(名字: "米娜", 平均成績: 84, 存款: 238920)
入學申請(名字: "海倫", 平均成績: 90, 存款: 127000)


// 2. 請根據 Google Doc 中提供的體脂率計算法和體型對照表印出正確的體脂率和體型資訊，如果對象低於 18 歲則只印出「多吃多動，健康快樂長大就好」。

import Foundation

func 體脂率計算(名字: String, 是男生: Bool, 年齡: Int, 身高: Double, 體重: Double) {
    // 1. 計算 BMI
    let bmi = 體重 / ((身高 / 100) * (身高 / 100))
    
    var gender = 0
    if (是男生) {
        gender = 1
    }
    
    let fatrate = (1.2 * bmi) + (0.23 * Double(年齡)) - 5.4 - (10.8 * Double(gender))
    
    let fatrateString = String(format: "%.1f", fatrate)
    let fatrateValue = Double(fatrateString)!
    
    if (年齡 < 18) {
        print("\(名字)，多吃多動，健康快樂長大就好。")
    } else {
        if (是男生) {
            if (年齡 >= 60) {
                if (fatrateValue > 30) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 13 % ~ 25 %。")
                } else if (fatrateValue > 25) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 13 % ~ 25 %。")
                } else if (fatrateValue > 13) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 13 % ~ 25 %。")
                }
            } else if (年齡 >= 40) {
                if (fatrateValue > 28) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 11 % ~ 23 %。")
                } else if (fatrateValue > 23) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 11 % ~ 23 %。")
                } else if (fatrateValue > 11) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 11 % ~ 23 %。")
                }
            } else {
                if (fatrateValue > 25) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 8 % ~ 20 %。")
                } else if (fatrateValue > 20) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 8 % ~ 20 %。")
                } else if (fatrateValue > 8) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 8 % ~ 20 %。")
                }
            }
        } else {
            if (年齡 >= 60) {
                if (fatrateValue > 41) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 24 % ~ 36 %。")
                } else if (fatrateValue > 36) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 24 % ~ 36 %。")
                } else if (fatrateValue > 24) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 24 % ~ 36 %。")
                }
            } else if (年齡 >= 40) {
                if (fatrateValue > 40) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 23 % ~ 35 %。")
                } else if (fatrateValue > 35) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 23 % ~ 35 %。")
                } else if (fatrateValue > 23) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 23 % ~ 35 %。")
                }
            } else {
                if (fatrateValue > 38) {
                    print("\(名字)的體脂率是 \(fatrateString) %，屬於過胖體型，理想值應為 21 % ~ 33 %。")
                } else if (fatrateValue > 33) {
                    print("\(名字)的體脂率是 \(fatrateString) %，高於正常標準，理想值應為 21 % ~ 33 %。")
                } else if (fatrateValue > 21) {
                    print("\(名字)的體脂率是 \(fatrateString) %，位於正常標準，繼續保持！")
                } else {
                    print("\(名字)的體脂率是 \(fatrateString) %，低於正常標準，理想值應為 21 % ~ 33 %。")
                }
            }
        }
    }
}

// 執行測試
體脂率計算(名字: "亞倫", 是男生: true, 年齡: 17, 身高: 149, 體重: 40)
體脂率計算(名字: "克里斯", 是男生: true, 年齡: 40, 身高: 150, 體重: 60)
體脂率計算(名字: "丹尼", 是男生: true, 年齡: 20, 身高: 181, 體重: 53)
體脂率計算(名字: "比爾", 是男生: true, 年齡: 26, 身高: 165, 體重: 53)
體脂率計算(名字: "吉米", 是男生: true, 年齡: 60, 身高: 173, 體重: 120)
體脂率計算(名字: "艾瑪", 是男生: false, 年齡: 17, 身高: 149, 體重: 40)
體脂率計算(名字: "凱西", 是男生: false, 年齡: 40, 身高: 150, 體重: 60)
體脂率計算(名字: "黛比", 是男生: false, 年齡: 20, 身高: 180, 體重: 53)
體脂率計算(名字: "瑪麗", 是男生: false, 年齡: 26, 身高: 165, 體重: 53)
體脂率計算(名字: "米蘭達", 是男生: false, 年齡: 60, 身高: 173, 體重: 120)