Admin.create!(
                    email: "example@hogehoge.org",
                 password: "hogehoge",
    password_confirmation: "hogehoge",
               created_at: Time.zone.now)

User.create!(
                     name: "たぬき",
                    email: "tanuki@tanu.org",
                is_active: true,
                 password: "hogehoge",
    password_confirmation: "hogehoge",
               created_at: Time.zone.now)
User.create!(
                     name: "きつね",
                    email: "fox@konkon.org",
                is_active: true,
                 password: "hogehoge",
    password_confirmation: "hogehoge",
               created_at: Time.zone.now)

Tag.create!(
           name: "オレンジ",
     created_at: Time.zone.now)
Tag.create!(
           name: "ジャスミン",
     created_at: Time.zone.now)

Store.create!(
        name: "いぬねこ倶楽部",
    latitude: 0.001,
   longitude: 0.001,
  created_at: Time.zone.now)

Post.create!(
         user_id: 1,
        store_id: 1,
            body: "めっちゃよかった",
       is_delete: false,
      created_at: Time.zone.now)
Post.create!(
         user_id: 1,
        store_id: 1,
            body: "リピート来店した",
       is_delete: false,
      created_at: Time.zone.now)
Post.create!(
         user_id: 2,
        store_id: 1,
            body: "そこそこいけてる",
       is_delete: false,
      created_at: Time.zone.now)
PostTag.create!(
         post_id: 1,
          tag_id: 1,
      created_at: Time.zone.now)