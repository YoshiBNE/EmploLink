# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seeker1 = Seeker.create(first_name: "John", last_name: "Doe", age:25, email: "john_doe@email.com", phone:"0421123123", gender: "Male")
seeker2 = Seeker.create(first_name: "Hello", last_name: "World", age:25, email: "hello_world@email.com", phone:"0421111111", gender: "Female")
seeker3 = Seeker.create(first_name: "Jason", last_name: "Borne", age:25, email: "jason_borne@email.com", phone:"0421222222", gender: "Male")
seeker4 = Seeker.create(first_name: "Byron", last_name: "Bay", age:25, email: "byron_bay@email.com", phone:"0421333333", gender: "Male")
seeker5 = Seeker.create(first_name: "Tom", last_name: "Holland", age:25, email: "tom_holland@email.com", phone:"0421444444", gender: "Male")

skill1 = Skill.create(name: "IELTS", description: "Score 7.0")
skill2 = Skill.create(name: "Certificate IV", description: "in Cookery")
skill3 = Skill.create(name: "Certificate III", description: "in Commercial Business")
skill4 = Skill.create(name: "Driver's License", description: "Open License in Queensland")
skill5 = Skill.create(name: "Bachelor degree", description: "in Software Engineering")

SeekerSkill.create(seeker: seeker1, skill: skill1)
SeekerSkill.create(seeker: seeker1, skill: skill2)
SeekerSkill.create(seeker: seeker1, skill: skill3)
SeekerSkill.create(seeker: seeker1, skill: skill4)
SeekerSkill.create(seeker: seeker1, skill: skill5)
SeekerSkill.create(seeker: seeker4, skill: skill1)
SeekerSkill.create(seeker: seeker2, skill: skill1)
SeekerSkill.create(seeker: seeker2, skill: skill2)
SeekerSkill.create(seeker: seeker3, skill: skill3)
SeekerSkill.create(seeker: seeker4, skill: skill4)
SeekerSkill.create(seeker: seeker5, skill: skill5)
SeekerSkill.create(seeker: seeker5, skill: skill1)

emp1 = Employer.create(company_name: "PineApple", email:"pineapple.com.au", state:"QLD", phone:"0338851234")

Link.create(seeker: seeker1, employer: emp1)

job1 = Job.create(title:"Web Developer", description:"Bulding/Improving frontend and backend of web application.", employer: emp1)

cate1 = Category.create(name:"Information Technology")

job1.category = cate1



