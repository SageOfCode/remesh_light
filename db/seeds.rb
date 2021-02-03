# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  convo1 = Conversation.create!(
    title: "New Blender Video Feedback"
  )

  convo2 = Conversation.create!(
    title: "Cheese Board Video"
  )

  convo3 = Conversation.create!(
    title: "Nascar Fan Service Feeback"
  )

  convo4 = Conversation.create!(
    title: "New Banking Account Feedback"
  )

  message1 = convo1.messages.create!(
    text: "I love the new blender, it looks like it creates great smoothies!"
  )
  
  message2 = convo2.messages.create!(
    text: "I am a big fan of cheese and want this immediately!"
  )

  message3 = convo3.messages.create!(
    text: "The sponsers seem to be the focus of the add, more than the cars"
  )

  message4 = convo4.messages.create!(
    text: "I'm worried that there are hidden fees that are not advertised"
  )

  thought1 = message1.thoughts.create!(
    text: "I agree, I can't wait to try this blender out"
  )

  thought2 = message2.thoughts.create!(
    text: "I'm not a cheese fan and even I think this looks appetizing"
  )

  thought1 = message3.thoughts.create!(
    text: "That's fair, there does seem to be a big focus on the logos"
  )

  thought1 = message4.thoughts.create!(
    text: "I have this account and I have not had any issues"
  )