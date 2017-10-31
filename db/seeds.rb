100.times do |n|
  email = Faker::Internet.email
  uid = Faker::Commerce.department
  provider = Faker::Internet.email
  password = "password"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               uid: uid,
               provider: provider,
               avatar: File.open("./public/l_e_others_500.png")  
             )
end
