User.create!([
  {email: "foo@bar.com", encrypted_password: "$2a$10$vWSbTtj9qeZY3tcFVgEDle3fpP45NfMxWwIRmwERQIKW3qCsCxNCq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2014-12-20 12:32:59", last_sign_in_at: "2014-12-20 11:42:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "toma@toma.com", encrypted_password: "$2a$10$3LqmYXabQG3UMTbucyxKIuFp0HSBV9s.VuejxwmqRHnAdkduhBZOO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2014-12-20 12:31:57", last_sign_in_at: "2014-12-19 20:01:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "dummy1@dum.com", encrypted_password: "$2a$10$YHjwETT8AUDR.AAo4G7/3uV.rbzB/POsfbXsiRPTRnT/FVjO3iK1u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-20 12:50:50", last_sign_in_at: "2014-12-20 12:50:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "dummy2@dum.com", encrypted_password: "$2a$10$vfMbr2QhcFwMyrhlnAUKquTUaCdIiNq7DIoBWnpQh.wQDLkh3UJzW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-20 12:52:27", last_sign_in_at: "2014-12-20 12:52:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "english_tweep@en.com", encrypted_password: "$2a$10$/1AJ1w8BPogKqrIzo4F6Z.eh1nwk.LVAZBVdSqdjAOsBj21wVezyu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-12-20 12:57:51", last_sign_in_at: "2014-12-20 12:54:16", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "german_tweep@ger.com", encrypted_password: "$2a$10$UagsEYcxkbsdWxijl8dRpecoAR9dRsQ0afss9M78nGwe58mUdPYvS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-20 12:55:30", last_sign_in_at: "2014-12-20 12:55:30", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Post.create!([
  {context: "post1", user_id: 1},
  {context: "post2", user_id: 1},
  {context: "qnb", user_id: 2},
  {context: "hsbc", user_id: 2},
  {context: "saas", user_id: 2},
  {context: "meeh", user_id: 2},
  {context: "post3", user_id: 1},
  {context: "dum dum 1", user_id: 3},
  {context: "dum dum 2", user_id: 4},
  {context: "Happy new year!", user_id: 5},
  {context: "I don't know german! ", user_id: 5},
  {context: "Freus Neus Jahr!", user_id: 6},
  {context: "Ich kann kein englisch! :(", user_id: 6}
])
Relationship.create!([
  {user_id: 1, followings_id: 2},
  {user_id: 6, followings_id: 5},
  {user_id: 6, followings_id: 3},
  {user_id: 5, followings_id: 6},
  {user_id: 5, followings_id: 4},
  {user_id: 5, followings_id: 1}
])
