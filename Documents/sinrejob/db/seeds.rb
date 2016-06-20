# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.create(:title => "hair cut nagaoka",:content_detail => 'このお店の夢・想い
お客様満足度はスタッフさんの働きやすさに比例していると思います
当店が1番大切にしているところです
このお店のこだわり/自慢
キャリアプラン
女性は結婚しても 希望の時間働けるようにさせて頂いています
男性は家族ができても幸せになるように提案しています
特に住宅ローンがおりるようにご提案しています
価値観
ラクヘアーはお客様がラクになって頂けるよう
ハンドマッサージサービスやマッサージチェアをご用意。
ゆったりを提供しているのでスタッフさんもゆっくりした気持ちが大事と思っています
お客様をたらい回しするようなサロンではないので
美容ライフが楽しめます')

Job.create(:title => "ビューティーサロン小林",:content_detail => "2014年8月にオープンした複合施設で、地下１階がウェディング・ドレスサロン、１階がカフェ・雑貨店、３階がエステサロンになっています。
お洒落な完全個室の店内で、シャワールーム、ヘッドスパ専用ルームも完備されています。
社会保障も完備し、女性が活躍できる場を整えています。
アットホームな雰囲気の中で楽しく働くことができ、ノルマ等もありません。
自社化粧品「Lapidem」が業務用商材、小売り商品が発売され、PR活動にも積極的に取り組んでいます。
結果の出る施術と最上級のサービスをモットーに、お客様の多様なニーズに答える事ができ、プロフェッショナルなセラピストに成長できる環境です。
アットホーム・働きやすい環境・オシャレなカフェ&雑貨店が併設・社販有り")

Job.create(:title => "メンズ　サロン　濱田",:content_detail => "◆選べる“３つ”の働き方◆
挑戦プラン・安定プラン・アレンジプラン
あなたに合ったプランがきっと見つかる！ ")

Job.create(:title => "黒田屋",:content_detail => "経営理念・・・１．お客様、スタッフ共にハートフルに愛を持って接し、自分と回りの幸せを目指す
　　　　　　　２．皆が自由に楽しく働き、夢が叶えられる仲間をたくさん作る。
　　　　　　　３．全てに一流を目指し、地域に貢献し、地域一番店になる。　　　
・立地はショッピングセンターの中にあるので、集客もあり、お買物も便利♪
・教育システム、社内講習充実（メーカーなどの臨店講習もあり）
・毎週日曜日の練習チェック日以外は練習は自由！強制は致しません。
・かつて多くの賞をとったオーナー自らカットテクニックを伝授。高い技術が身に付きます。
・当社はパートスタイリストさんをスペシャリストさんとよんで、リスペクトしております。
　技術良し、人柄良しで大活躍。悩み相談にものってくれますよ。
　[岩井文男美容室のグループサロン]
　　グループサロン全体でのフォトコンテスト、カットコンテスト、有名美容師の講習、海外研修、カット講習、セット講習、メイク講習に参加できます。  ")

Client.create(:client => "株式会社濱田" ,:corporate_form => "法人",:contract_status => "美容：契約中／介護：契約なし",:pulling_down => "美容：口座引落可　／　介護：契約なし")
Client.create(:client => "hiar salon nagaoka",:corporate_form => "リテール" ,:contract_status => "美容：契約中／介護：契約なし",:pulling_down => "美容：口座引落可　／　介護：契約なし")


Area.create( :prefecture => '北海道')
Area.create( :prefecture => '青森県')
Area.create( :prefecture => '岩手県')
Area.create( :prefecture => '宮城県')
Area.create( :prefecture => '秋田県')
Area.create( :prefecture => '山形県')
Area.create( :prefecture => '福島県')
Area.create( :prefecture => '茨城県')
Area.create( :prefecture => '栃木県')
Area.create( :prefecture => '群馬県')
Area.create( :prefecture => '埼玉県')
Area.create( :prefecture => '千葉県')
Area.create( :prefecture => '東京都')
Area.create( :prefecture => '神奈川県')
Area.create( :prefecture => '新潟県')
Area.create( :prefecture => '富山県')
Area.create( :prefecture => '石川県')
Area.create( :prefecture => '福井県')
Area.create( :prefecture => '山梨県')
Area.create( :prefecture => '長野県')
Area.create( :prefecture => '岐阜県')
Area.create( :prefecture => '静岡県')
Area.create( :prefecture => '愛知県')
Area.create( :prefecture => '三重県')
Area.create( :prefecture => '滋賀県')
Area.create( :prefecture => '京都府')
Area.create( :prefecture => '大阪府')
Area.create( :prefecture => '兵庫県')
Area.create( :prefecture => '奈良県')
Area.create( :prefecture => '和歌山県')
Area.create( :prefecture => '鳥取県')
Area.create( :prefecture => '島根県')
Area.create( :prefecture => '岡山県')
Area.create( :prefecture => '広島県')
Area.create( :prefecture => '山口県')
Area.create( :prefecture => '徳島県')
Area.create( :prefecture => '香川県')
Area.create( :prefecture => '愛媛県')
Area.create( :prefecture => '高知県')
Area.create( :prefecture => '福岡県')
Area.create( :prefecture => '佐賀県')
Area.create( :prefecture => '長崎県')
Area.create( :prefecture => '熊本県')
Area.create( :prefecture => '大分県')
Area.create( :prefecture => '宮崎県')
Area.create( :prefecture => '鹿児島県')
Area.create( :prefecture => '沖縄県')
