Deck.delete_all
Card.delete_all



moxie = Deck.create(title: "All About Moxie")
rutabaga = Deck.create(title: "All About Rutabaga")
pillows = Deck.create(title: "All About Pillows")
red_panda = Deck.create(title: "All About Red Pandas")

moxie.cards << Card.create(question: "What kind of a dog am I?", answer: "Schnauzer")
moxie.cards << Card.create(question: "What is my favorite food?", answer: "Beans")
moxie.cards << Card.create(question: "What is my favorite place to be scratched?", answer: "Chest")
moxie.cards << Card.create(question: "True or false - I like it when people clap?", answer: "Woof!")

rutabaga.cards << Card.create(question: "What is my favorite place to sit?", answer: "Shoulders")
rutabaga.cards << Card.create(question: "True or false - I like to sit in your lap?", answer: "False")
card_7 = Card.create(question: "What color is my fur?", answer: "Black")
rutabaga.cards << card_7

pillows.cards << Card.create(question: "True or false- I like showers?", answer: "No")
pillows.cards << Card.create(question: "True or false I take showers?", answer: "true")
card_10 = Card.create(question: "What is my favorite people food?", answer: "Spinach")
pillows.cards << card_10

red_panda.cards << Card.create(question: "Which famous red panda escaped from the Washington, D.C. National Zoo in 2013?", answer: "Rusty")
red_panda.cards << Card.create(question: "Which famous red panda escaped from the Birmingham Nature Centre in England in 2005?", answer: "Babu")
red_panda.cards << Card.create(question: "Which famous red panda in Japan is known for standing upright for up to ten seconds at a time?", answer: "Futa")
red_panda.cards << Card.create(question: "Which web browser is named after me?", answer: "Firefox")
red_panda.cards << Card.create(question: "What do I mainly eat?", answer: "Bamboo")
red_panda.cards << Card.create(question: "True or false - red pandas are closely related to pandas?", answer: "False")
red_panda.cards << Card.create(question: "Red pandas are the only non-primate species known to be able to taste what sweet food?", answer: "Aspartame")
red_panda.cards << Card.create(question: "Red pandas' fur color lets them camouflage in what sort of trees?", answer: "Fir")
red_panda.cards << Card.create(question: "In 1821, English naturalist Major General Thomas Hardwicke wanted to call red pandas what?", answer: "Wah")
red_panda.cards << Card.create(question: "What is the conservation status of the red panda under the IUCN (International Union for Conservation of Nature)?", answer: "Vulnerable")


User.delete_all
user_data = {email: "foxiemoxie@woof.com", username:"moxie", password:"barkbark"}
user_moxie = User.create(user_data)
