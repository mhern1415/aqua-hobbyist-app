User.destroy_all
Tank.destroy_all

mark = User.create(name: "Mark", email: "mark@mark.com", image_url: "https://live.staticflickr.com/65535/49025620408_0c03d21de4_b.jpg", bio: "I've been in the hobby for 15 years. I like to collect plants from all around the world, specifically in Southern America. I breed guppies, dwarf shrimp, and several species of apistogramma. I currently own two tanks with plans to add a third in the near future.", password: "pw")

ingrid = User.create(name: "Ingrid", email: "ingrid@ingrid.com", image_url: "https://live.staticflickr.com/65535/49025620408_0c03d21de4_b.jpg", bio: "While fish are my main interest, I believe in adding plants to the environment to allow the fish to settle in and feel as if they are in their natural habitat while providing oxygen to the water.", password: "pw")

Tank.create(title: "ADA 60P", image_url: "https://i.imgur.com/UrMHPO4.jpg", size: "17 Gallons", flora: "Celestial Pearl Danios, Pygmy Cory Cats, Otocinclus Catfish, Staurogyne Repens, Rotala Indica, Bucephalandra Red Mini, Ludwigia Super Red, Dwarf Hair Grass", user_id: ingrid.id)

Tank.create(title: "30 Long Rimless", image_url: "https://c5.staticflickr.com/9/8372/29596500372_fe2c8b7c61_k.jpg", size: "30 Gallons", flora: "Harlequin Rasboras, Cardinal Tetras, Brown Crypt, AR Mini, Staurogyne Repens, Water Wisteria, Rotala Macandra, Anubias Nana, Ludwigia Super Red", user_id: ingrid.id)

Tank.create(title: "UNS 60U", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20 Gallons", flora: "Apistogramma Agassizii, Guppies, Harlequin Rasboras, Otocinclus Catfish. Ludwigia Super Red, Limnophila Aromatica, Hygrophila Pinnatifida, Java Fern, Althernanthera Mini", user_id: mark.id)

