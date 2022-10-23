puts "role seeded"
Role.create(character_name: "Amigo")
Role.create(character_name: "Smri")
Role.create(character_name: "Ozy")
Role.create(character_name: "Rick")


puts "Audi seeded"
Audition.create(actor: "Michel", phone: "3456783786", hired: true, location: "New York", role_id: 1)
Audition.create(actor: "Seli", phone: "3456783786", hired: false, location: "California", role_id: 2)
Audition.create(actor: "Riya", phone: "3456783786", hired: false, location: "VGS", role_id: 1)
