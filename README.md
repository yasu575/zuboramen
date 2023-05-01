# zuboramen
■サービス概要
カップラーメンを何回も食べて飽きたり、物足りなさを感じ、新鮮味に欠けてしまっているズボラの人に
簡単に楽して変化を楽しめるトッピングカップラーメンだけを共有閲覧できる
超簡単カップラーメントッピング共有サービスです。

■メインのターゲットユーザー
・カップラーメンを食べ飽きていて、新鮮味に欠けている、ズボラな人
・カップラーメンにトッピングを加えているが、そのトッピングのバリエーションも固定化していて、自分以外のアイデアも試してみたいと感じている

■ユーザーが抱える問題
ラーメンを食べたくてカップラーメンを買うも、毎回同じような具材、味で飽きてきている。なにかアレンジしようとするが、めんどくさくて毎回そのまま食べて物足りなさを感じている。また、簡単にトッピングをするも自分一人のアイデアにとどまってしまい、バリエーションが少ない。

■解決方法
相性がいいと思った組み合わせをたくさんのユーザーが共有することによって、色々なアイデアを知ることができ、自分好みの組み合わせに出会うことができる。

■実装予定の機能
  - ユーザー新規登録機能
    ・ユーザーの新規登録ができる

  - ユーザーログイン機能
    ・ユーザーのログインができる

  - ユーザーログアウト機能
    ・ユーザーのログアウトができる

  - プロフィール機能
    ・自分のプロフィールを編集することができる

  - 投稿機能
    ・投稿を作成、編集、更新、削除できる
    ・商品名を必須項目とし入力しないと投稿できないようにする。
    ・トッピングの入力形式はプレースホルダーで見えるようにする。
    ・トッピング欄を必須項目とし、入力しないと投稿できないようにする。
    ・写真は任意でアップロードすることができる。
    ・投稿内容は任意で入力することができる。

  - タグ機能
    ・投稿時にタグをつけることができる
    ・タグは半角カンマ区切りで入力
    ・同一のタグが入力されていた場合、1つのみ登録される
    ・登録したタグが投稿一覧画面の各投稿部分に表示される

  - 検索・絞り込み機能
    ・キーワード検索で検索できる。
    ・カップラーメンの味を絞り込める
    ・トッピングを絞り込める
    ・検索、絞り込みにインクリメンタルサーチを使用する

  - いいね機能
    ・いいね！をこれおいしい！にする
    ・他人の投稿をいいね（これおいしい！）することができる

  - twitterでシェアできるように画像生成をしてOGP用画像の作成。

■実装検討中の機能
- コメント機能
  ・投稿に対してコメントできる
- お気に入り機能
  ・投稿をお気に入り（後で試してみる）として保存することができる
- ランキング機能
  ・トッピングのランキング
  ・カップ麺のランキング
  ・投稿のいいね数のランキング

■なぜこのサービスを作りたいのか？
ズボラでも簡単にカップラーメンをアレンジして飽きずに楽しみながら食べられるカップラーメンとトッピングの組み合わせを多くの人と共有したいと思ったから。自分のアイデアにとどまらず、他の人の組み合わせを知ることで気になる組み合わせを試すことができるから。

■スケジュール
企画〜技術調査:4/25 〆切
README〜ER図作成:5/5 〆切
メイン機能実装:5/5 - 6/15
β版をRUNTEQ内リリース(MVP):6/15 〆切
本番リリース:6月末

■技術選定
- Rails7
- Bootstrap