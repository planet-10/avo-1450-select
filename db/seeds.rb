fg1 = FarmerGroup.find_or_create_by(
  name: "Group1",
  )

fg2 = FarmerGroup.find_or_create_by(
  name: "Group2",
  )

f11 = Farmer.find_or_create_by(
  name: "Alice",
  farmer_group_id: fg1.id
)

f21 = Farmer.find_or_create_by(
  name: "Bob",
  farmer_group_id: fg1.id
)

f21 = Farmer.find_or_create_by(
  name: "Maria",
  farmer_group_id: fg2.id
)