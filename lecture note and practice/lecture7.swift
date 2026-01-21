//在 Int 中我們學過的靜態屬性有哪兩個？
//max和min
//在 String 中我們學過的實例屬性有哪兩個？
//.count和.isEmpty
//Function 和方法的差別是什麼？ 
//function可以在任何地方使用,方法只能在特定類型中使用
import Foundation

/// 一隻可戰鬥的動物。
public struct Animal
{
    public let name: String
    public var hp: Int
    public let power: Int
    
    /// 建立一隻動物，血量範圍為 1 ~ 50，力量範圍為 1 ~ 10，超過範圍將取最接近值。
    /// - Parameter name: 名字
    /// - Parameter hp: 血量
    /// - Parameter power: 力量
    public init(_ name: String, hp: Int, power: Int)
    {
        var name = name.trimmingCharacters(in: .whitespacesAndNewlines)
        if (name.count == 0) { name = "無名氏🥲" }
        
        self.name = name
        self.hp = hp < 1 ? 1 : min(50, hp)
        self.power = power < 1 ? 1 : min(10, power)
    }
    
    /// 和另外一隻動物戰鬥。預設是我方先攻。
    /// 這個方法會印出對戰訊息並回傳獲勝的動物。
    /// - Returns: 獲勝的動物
    public func 戰鬥(對上 敵人: Animal, 我方先攻: Bool = true) -> Animal
    {
        var attacker = 我方先攻 ? self : 敵人
        var defender = 我方先攻 ? 敵人 : self
        print("⚔️⚔️⚔️ \(name)（HP \(hp) 力量 \(power)） VS \(敵人.name) （HP \(敵人.hp) 力量 \(敵人.power)）⚔️⚔️⚔️")
        
        while (attacker.hp > 0 && defender.hp > 0)
        {
            defender.hp -= attacker.power
            let hpMessage = defender.hp > 0 ? "\(defender.name)血量剩餘 \(defender.hp)。" : "致命一擊！\(defender.name)被打倒了。"
            print("\t\(attacker.name) 對 \(defender.name) 造成了 \(attacker.power) 點傷害！ \(hpMessage)")
            (attacker, defender) = (defender, attacker)
        }
        
        print("✨「\(defender.name)」獲勝！🏆")
        return defender
    }
    
    public static let 戰鬥規則: String = "兩隻動物輪流攻擊，1 點力量可以消耗對方 1 點血量，先讓敵方血量歸零者獲勝。"
    
    /// 隨機產生一隻動物
    public static func 隨機() -> Animal
    {
        let names = "🐶🐱🐹🐰🐻🐼🐻‍❄️🐨🐯🦁🐮🐷🐸🐵🐔🐧🐤🦊🐴🦄🐝🐛🦋🐌🐞🐢🐙🦑🦀🐠🐟🐡🐬🦭🐳🦉"
        return Animal(String(names.randomElement()!),
                      hp: Int.random(in: 10...50),
                      power: Int.random(in: 1...10))
    }
}



  // 【ChaoCode】 Swift 基礎篇 7：類型 & Function 實作作業


// ⚠️ 這次的作業主要目的是練習「看別人寫好的類型」，並學會怎麼建立和使用相關的方法和屬性。請下載好我寫好的「Animal」類型並放入 Sources 中，接著跟著下列步驟完成作業。（如果不確定怎麼做，影片最後有示範。）
    let Joe = Animal.init("Joe",hp:100,power: 100)
// 1️⃣ 請閱讀下載好的 Animal 類型，只要看有哪些屬性、方法和要怎麼呼叫那些方法。

// 2️⃣ 請印出戰鬥規則。

print("歡迎來到動物大亂鬥！這裡的規則是：", Animal.戰鬥規則)

// 3️⃣ 建立第一回合的選手：台北小野貓，血量 25，攻擊力 7；台東穿山甲，血量 40，攻擊力 4。
let 台北小野貓 = Animal.init("台北小野貓",hp:25,power:7)
let 台東穿山甲 = Animal.init("台東穿山甲",hp:40,power:4)

// 4️⃣ 開始第一輪戰鬥，由台北小野貓先攻，並印出戰鬥紀錄。

print("第一輪戰鬥開始！")
let winner = 台北小野貓.戰鬥(對上:台東穿山甲)
// 5️⃣ 請幫獲勝的動物補充血量 25，並印出更新後的血量資訊。

print("🍼\(winner.name)喝了超能能量飲，現在血量為 \(台北小野貓.hp+25)。")

// 6️⃣ 接著由獲勝的動物和一位隨機動物戰鬥，這次由隨機動物先攻，並印出戰鬥紀錄。
print("第二輪戰鬥開始！")
let winner2 = Joe.戰鬥(對上:台北小野貓)
