User.destroy_all
Tank.destroy_all

mark = User.create(name: "Mark", email: "mark@mark.com", image_url: "https://live.staticflickr.com/65535/49025620408_0c03d21de4_b.jpg", bio: "I've been in the hobby for 15 years. I like to collect plants from all around the world, specifically in Southern America. I breed guppies, dwarf shrimp, and several species of apistogramma. I currently own two tanks with plans to add a third in the near future.", password: "pw")

ingrid = User.create(name: "Ingrid", email: "ingrid@ingrid.com", image_url: "https://live.staticflickr.com/65535/49025620408_0c03d21de4_b.jpg", bio: "i love fish", password: "pw")

Tank.create(title: "20 Gallon New", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20G", flora: "Ludwigia Repens Rubin", user_id: ingrid.id)

Tank.create(title: "20 Gallon Newer", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20Gallons", flora: "Limnophila Aromatica", user_id: ingrid.id)

Tank.create(title: "20 Gallon Newest", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20 Gallons", flora: "Apistogramma Agassizii, Guppies, Harlequin Rasboras, Otocinclus Catfish. Ludwigia Super Red, Limnophila Aromatica, Hygrophila Pinnatifida, Java Fern, Althernanthera Mini", user_id: mark.id)

