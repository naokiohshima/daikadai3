100.times do |n|
  email = Faker::Internet.email
  uid = Faker::Commerce.department
  provider = Faker::Internet.email
  password = "password"
  title = "title"
  content = "content"
  user = User.create!(email: email,
               password: password,
               password_confirmation: password,
               uid: uid,
               provider: provider,
               avatar: File.open("./public/l_e_others_500.png")
             )
  blog = Blog.create!(title: title,
               content: content,
               user_id: user.id
             )
  Comment.create!(content: content,
                  user_id: user.id,
                  blog_id: blog.id
             )
end
