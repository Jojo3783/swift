//Tuple 裡面可以放什麼資料類型？
//任何資料型態
//關鍵字「typealias」是做什麼的？
//替已經存在的類型取別名
//在 Swift 中，通常看到底線代表什麼？
//省略

// 【ChaoCode】 Swift 基礎篇 8：Tuple 實作作業


// 1. 下面已經建立兩位學生的名字和考試成績變數。請建立一個適合學生的 Tuple 資料類型並設定別名，接著把以下 Code 改成用你建立的 Tuple 資料類型的方式建立 學生A 和 學生B 各一個變數，然後檢查誰的考試成績比較好，並印出他的平均分數。
typealias studentGrade = (name: String, mathGrade: Int,englishGrade: Int,historyGrade: Int,chineseGrade: Int)
let 學生A名字 = "小鴨"
let 學生A數學分數 = 93
let 學生A英文分數 = 68
let 學生A歷史分數 = 77
let 學生A國文分數 = 72

let 學生B名字 = "貝貝"
let 學生B數學分數 = 84
let 學生B英文分數 = 89
let 學生B歷史分數 = 59
let 學生B國文分數 = 72

let studentA : studentGrade = ("小鴨", 93, 68, 77, 72)
let studentB : studentGrade = ("貝貝", 84, 89, 59, 72)
let studentAAverage : Double = Double(studentA.mathGrade + studentA.englishGrade+studentA.historyGrade+studentA.chineseGrade) / 4
let studentBAverage : Double = Double(studentB.mathGrade+studentB.englishGrade+studentB.historyGrade+studentB.chineseGrade) / 4
print(studentAAverage > studentBAverage ? "\(studentA.name)的平均分數較高，平均分數為 \(studentAAverage) 分" : "\(studentB.name)的平均分數較高，平均分數為 \(studentBAverage) 分") 



// 2. 請跟著步驟印出今天花了多少錢和今天的發票有沒有中獎。
// ⚠️ 和上次的作業一樣，請不用在意我提供的 Function 中語法是怎麼寫的，只要會呼叫和使用回傳值就可以了。

// 1️⃣ 請閱讀定義的 Tuple 別名和 Function 的參數和回傳值

typealias 發票 = (號碼: String, 消費金額: Int)

func 結帳(_ 商品價格: Int...) -> 發票
{
    let totalCost = 商品價格.reduce(0) { $0 + $1 }
    return 發票("RE" + Int.random(in: 100...999).description,
              totalCost)
}

func 檢查是否中獎(發票: 發票...) -> Bool
{
    let win = 發票.first { $0.號碼.hasSuffix("8") }
    return !(win == nil)
}

// 2️⃣ 以下是今天的三筆花費，請印出今天的總花費。
//早餐：59 元套餐一份
//午餐：牛丼 129 元、可樂餅 35 元、可爾必思 50 元
//晚餐：義大利麵 215 元、拿鐵 90 元
let 早餐 :發票 = (結帳(59))
let 午餐 :發票 = (結帳(129 + 35 + 50))
let 晚餐 :發票 = (結帳(215 + 90))
let total = 早餐.消費金額 + 午餐.消費金額 + 晚餐.消費金額
print("今天吃飯總共花了 \(total) 元")

// 3️⃣ 請檢查今天的發票是否有中獎，並印出結果。
let isWinner = 檢查是否中獎(發票: 早餐, 午餐, 晚餐)

print(isWinner ? "發票中獎了！美好的一天" : "明天的發票會更好")