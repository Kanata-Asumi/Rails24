# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ログイン用のアカウントを作成
60.times do |n|
    User.create!(
        # User_name
        name: "test#{n+1}",
        # User_password
        password: "hoge#{n+1}",
        # User_password_check
        password_confirmation: "hoge#{n+1}"
    )
end

gakubugakka = [ "法文学部-法経学科",
                "法文学部-社会文化学科",
                "法文学部-言語文化学科",
                "教育学部-小学校教育専攻",
                "教育学部-特別支援教育専攻",
                "教育学部-国語教育専攻",
                "教育学部-英語教育専攻",
                "教育学部-社会科教育専攻",
                "教育学部-数学科教育専攻",
                "教育学部-理科教育専攻",
                "教育学部-保健体育科教育専攻",
                "教育学部-音楽科教育専攻",
                "教育学部-美術科教育専攻",
                "人間科学部-心理学コース",
                "人間科学部-社会福祉コース",
                "人間科学部-身体活動・健康科学コース",
                "総合理工学部-物理工学科",
                "総合理工学部-物質化学科",
                "総合理工学部-地球科学科",
                "総合理工学部-数理科学科",
                "総合理工学部-知能情報デザイン学科",
                "総合理工学部-機械・電気電子工学科",
                "総合理工学部-建築デザイン学科",
                "総合理工学部-理工特別コース",
                "材料エネルギー学部",
                "生物資源科学部-生命科学科",
                "生物資源科学部-農林生産学科",
                "生物資源科学部-環境共生科学科"
            ]

28.times do |n|
    Blong.create!(
        number: n+1,
        gakubugakka: gakubugakka[n]
    )
end

#趣味モデル
all_hobby = [
    "野球 : 国内戦", 
    "野球 : 海外戦", 
    "野球 : 日本代表",
    "サッカー : 国内戦", 
    "サッカー : 海外戦", 
    "サッカー : 日本代表", 
    "テニス : 国内戦", 
    "テニス : 海外戦", 
    "テニス : 2024",
    "バレー : 国内戦", 
    "バレー : 海外戦", 
    "バレー : 日本代表",
    "アニメ : 2024", 
    "アニメ : 2025", 
    "アニメ : アクション", 
    "映画 : アクション",
    "映画 : コメディ",
    "映画 : 時代劇",
    "映画 : ドキュメンタリー",
    "映画 : ホラー",
    "映画 : 邦画", 
    "映画 : 洋画:字幕",
    "映画 : 洋画:吹き替え",
    "映画 : 恋愛",
    "ゲーム : アクション",
    "ゲーム : 音ゲー",
    "ゲーム : 乙女ゲー",
    "ゲーム : 格闘",
    "ゲーム : カードゲーム",
    "ゲーム : ギャルゲー",
    "ゲーム : サンドボックス",
    "ゲーム : シューティング",
    "ゲーム : シュミレーション",
    "ゲーム : ソーシャルゲーム",
    "ゲーム : タワーディフェンス",
    "ゲーム : ノベルゲーム",
    "ゲーム : パズルゲーム",
    "ゲーム : ホラーゲーム",
    "ゲーム : ボードゲーム",
    "ゲーム : FPS",
    "ゲーム : MOBA",
    "ゲーム : RPG",
    "ゲーム : 同人",
    "バスケ : 国内戦",
    "バスケ : 海外戦",
    "釣り : 川釣り",
    "釣り : 海釣り",
    "音楽 : クラシック",
    "音楽 : J-POP",
    "音楽 : K-POP",
    "音楽 : 洋楽",
    "音楽 : ロック",
    "音楽 : 演歌",
    "音楽 : 演奏",
    "音楽 : カラオケ",
    "筋トレ",
    "コーヒー",
    "神社",
    "料理",
    "お菓子作り",
    "車 : 国内",
    "車 : 海外",
    "家庭菜園",
    "イラスト : キャラクター",
    "イラスト : 風景画",
    "イラスト : 水彩画",
    "イラスト : 油絵", 
    "格闘技 : ボクシング",
    "格闘技 : キックボクシング",
    "格闘技 : 総合",
    "格闘技 : レスリング",
    "格闘技 : 柔道",
    "格闘技 : 空手",
    "相撲",
    "漫画 : 小児向け",
    "漫画 : 少年漫画",
    "漫画 : 少女漫画",
    "漫画 : 青年向け",
    "漫画 : 成人向け",
    "漫画 : 同人",
    "メイク",
    "ファッション : シューズ",
    "ファッション : トップス",
    "ファッション : ボトムス",
    "ファッション : アクセサリー"
]

# all_hobbyの要素数をカウント
amount_of_all_hobby = all_hobby.count

amount_of_all_hobby.times do |n|
    Hobby.create!(
        hobbynumber: "#{n+1}",
        hobbyname: "#{all_hobby[n]}"
    )
end

