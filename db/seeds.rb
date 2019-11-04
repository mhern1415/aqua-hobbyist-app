User.destroy_all
Post.destroy_all

mark = User.create(name: "Mark", email: "mark@mark.com", image_url: "https://imgur.com/2WyHhuv", bio: "i love plants", password: "pw")

ingrid = User.create(name: "Ingrid", email: "ingrid@ingrid.com", image_url: "https://imgur.com/2WyHhuv", bio: "i love fish", password: "pw")

Aquarium.create(title: "20 Gallon New", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20G", flora: "Ludwigia Repens Rubin", user_id: ingrid.id)

Aquarium.create(title: "20 Gallon Newer", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20Gallons", flora: "Limnophila Aromatica", user_id: ingrid.id)

Aquarium.create(title: "20 Gallon Newest", image_url: "https://i.imgur.com/w2pzhXm.jpg", size: "20Gal", flora: "Ludwigia Super Red", user_id: mark.id)
