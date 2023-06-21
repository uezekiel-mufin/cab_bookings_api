# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create({name: 'Admin', email: 'admin@gmail.com',password: 1111111111, password_confirmation: 1111111111})
# User.create({name: 'Alex', email: 'alex@gmail.com',password: 1111111111, password_confirmation: 1111111111})
# User.create({name: 'Ezekiel', email: 'ezekiel@gmail.com',password: 1111111111, password_confirmation: 1111111111})
Cab.create([
  {
    manufacturer: 'Honda',
    model: 'Honda City',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3.5L V6',
    image_url:
      'https://images.unsplash.com/photo-1600259828526-77f8617ceec9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9uZGElMjBjaXR5fGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 4,
    body_type: 'Sedan',
    user_id: 24,
    description:
      'The Honda City is a stylish and fuel-efficient sedan perfect for your daily commutes or longer trips. It features a sleek silver exterior that turns heads wherever you go. The interior offers comfortable seating for up to five passengers, with ample legroom and headspace. The trunk provides generous storage space, accommodating multiple suitcases or bags.',
  },
  {
    manufacturer: 'Ford',
    model: 'Ford Mustang',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '2L V4',
    image_url:
      'https://images.unsplash.com/photo-1603553329474-99f95f35394f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Rm9yZCUyME11c3Rhbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 4,
    body_type: 'Coupe',
    user_id: 23,
    description:
      "The Ford Mustang is an iconic sports car known for its powerful performance and striking design. This automatic transmission coupe offers an exhilarating driving experience combined with modern comfort features. With a seating capacity of four, it's an ideal choice for those seeking a blend of style and performance.",
  },
  {
    manufacturer: 'BMW',
    model: 'BMW 3 Series',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '5L V8',
    image_url:
      'https://images.unsplash.com/photo-1613027570801-5d2fe8f5e15d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Qk1XJTIwMyUyMFNlcmllc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    user_id: 23,
    description:
      'The BMW 3 Series is a luxury sedan that combines elegance, performance, and cutting-edge technology. With its automatic transmission, you can experience a smooth and dynamic driving experience. The spacious interior provides comfortable seating for up to five passengers, making it suitable for both business and leisure travel.',
  },
  {
    manufacturer: 'Toyota',
    model: 'Toyota Highlander',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3L V6',
    image_url:
      'https://images.unsplash.com/photo-1610855143470-0967a7348972?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8VG95b3RhJTIwSGlnaGxhbmRlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 7,
    body_type: 'SUV',
    user_id: 23,
    description:
      "The Toyota Highlander is a versatile SUV that offers ample space for both passengers and cargo. With its automatic transmission, you can enjoy a comfortable and convenient driving experience. The Highlander's seating capacity of seven makes it an excellent choice for family trips or group outings.",
  },
  {
    manufacturer: 'Chevrolet',
    model: 'Chevrolet Tahoe',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3L V6',
    user_id: 24,
    image_url:
      'https://images.unsplash.com/photo-1564422426545-8a43cd6598ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q2hldnJvbGV0JTIwVGFob2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 8,
    body_type: 'SUV',
    description:
      "The Chevrolet Tahoe is a spacious and powerful SUV that combines style, comfort, and capability. With its automatic transmission, you can effortlessly navigate various terrains. The Tahoe's seating capacity of eight ensures there's room for everyone, making it ideal for larger families or groups.",
  },
  {
    manufacturer: 'Nissan',
    model: 'Nissan Altima',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '2.5L V4',
    user_id: 24,
    image_url:
      'https://images.unsplash.com/photo-1581540222194-0def2dda95b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Tmlzc2FuJTIwQWx0aW1hfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    description:
      'The Nissan Altima is a reliable and fuel-efficient sedan that offers a comfortable and smooth ride. With its automatic transmission, driving becomes effortless. The Altima provides seating for up to five passengers, making it a practical choice for both daily commutes and longer trips.',
  },
  {
    manufacturer: 'Mercedes-Benz',
    model: 'Mercedes-Benz C-Class',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '5L V8',
    image_url:
      'https://images.unsplash.com/photo-1681170368080-f240d1216904?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fE1lcmNlZGVzJTIwQmVueiUyMEMlMjBDbGFzc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    user_id: 24,
    description:
      'The Mercedes-Benz C-Class is a luxury sedan that combines elegance, performance, and advanced technology. With its automatic transmission, you can enjoy a refined and comfortable driving experience. The C-Class offers seating for up to five passengers, providing a luxurious travel experience.',
  },
  {
    manufacturer: 'Honda',
    model: 'Honda City',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3.5L V6',
    image_url:
      'https://images.unsplash.com/photo-1600259828526-77f8617ceec9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9uZGElMjBjaXR5fGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 4,
    body_type: 'Sedan',
    user_id: 24,
    description:
      'The Honda City is a stylish and fuel-efficient sedan perfect for your daily commutes or longer trips. It features a sleek silver exterior that turns heads wherever you go. The interior offers comfortable seating for up to five passengers, with ample legroom and headspace. The trunk provides generous storage space, accommodating multiple suitcases or bags.',
  },
  {
    manufacturer: 'Ford',
    model: 'Ford Mustang',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '2L V4',
    image_url:
      'https://images.unsplash.com/photo-1603553329474-99f95f35394f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Rm9yZCUyME11c3Rhbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 4,
    body_type: 'Coupe',
    user_id: 23,
    description:
      "The Ford Mustang is an iconic sports car known for its powerful performance and striking design. This automatic transmission coupe offers an exhilarating driving experience combined with modern comfort features. With a seating capacity of four, it's an ideal choice for those seeking a blend of style and performance.",
  },
  {
    manufacturer: 'BMW',
    model: 'BMW 3 Series',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '5L V8',
    image_url:
      'https://images.unsplash.com/photo-1613027570801-5d2fe8f5e15d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Qk1XJTIwMyUyMFNlcmllc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    user_id: 22,
    description:
      'The BMW 3 Series is a luxury sedan that combines elegance, performance, and cutting-edge technology. With its automatic transmission, you can experience a smooth and dynamic driving experience. The spacious interior provides comfortable seating for up to five passengers, making it suitable for both business and leisure travel.',
  },
  {
    manufacturer: 'Toyota',
    model: 'Toyota Highlander',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3L V6',
    image_url:
      'https://images.unsplash.com/photo-1610855143470-0967a7348972?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8VG95b3RhJTIwSGlnaGxhbmRlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 7,
    body_type: 'SUV',
    user_id: 23,
    description:
      "The Toyota Highlander is a versatile SUV that offers ample space for both passengers and cargo. With its automatic transmission, you can enjoy a comfortable and convenient driving experience. The Highlander's seating capacity of seven makes it an excellent choice for family trips or group outings.",
  },
  {
    manufacturer: 'Chevrolet',
    model: 'Chevrolet Tahoe',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '3L V6',
    user_id: 23,
    image_url:
      'https://images.unsplash.com/photo-1564422426545-8a43cd6598ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q2hldnJvbGV0JTIwVGFob2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 8,
    body_type: 'SUV',
    description:
      "The Chevrolet Tahoe is a spacious and powerful SUV that combines style, comfort, and capability. With its automatic transmission, you can effortlessly navigate various terrains. The Tahoe's seating capacity of eight ensures there's room for everyone, making it ideal for larger families or groups.",
  },
  {
    manufacturer: 'Nissan',
    model: 'Nissan Altima',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '2.5L V4',
    user_id: 24,
    image_url:
      'https://images.unsplash.com/photo-1581540222194-0def2dda95b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Tmlzc2FuJTIwQWx0aW1hfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    description:
      'The Nissan Altima is a reliable and fuel-efficient sedan that offers a comfortable and smooth ride. With its automatic transmission, driving becomes effortless. The Altima provides seating for up to five passengers, making it a practical choice for both daily commutes and longer trips.',
  },
  {
    manufacturer: 'Mercedes-Benz',
    model: 'Mercedes-Benz C-Class',
    transmission: 'Automatic',
    rental_price: 100.00,
    discount: 5,
    engine_type: '5L V8',
    image_url:
      'https://images.unsplash.com/photo-1681170368080-f240d1216904?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fE1lcmNlZGVzJTIwQmVueiUyMEMlMjBDbGFzc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60',
    seating_capacity: 5,
    body_type: 'Sedan',
    user_id: 24,
    description:
      'The Mercedes-Benz C-Class is a luxury sedan that combines elegance, performance, and advanced technology. With its automatic transmission, you can enjoy a refined and comfortable driving experience. The C-Class offers seating for up to five passengers, providing a luxurious travel experience.',
  },
]
)

# Reservation.create(reserve_date:'2023-07-07',user_id: 24, cab_id: 72, city: 'New York')
# Reservation.create(reserve_date:'2023-08-08',user_id: 24, cab_id: 72, city: 'London')
# Reservation.create(reserve_date:'2023-09-09',user_id: 23, cab_id: 82, city: 'Barcelona')
# Reservation.create(reserve_date:'2023-10-10',user_id: 23, cab_id: 82, city: 'Vietnam')
# Reservation.create(reserve_date:'2023-11-11',user_id: 23, cab_id: 81, city: 'Asaba')
# Reservation.create(reserve_date:'2023-12-12',user_id: 23, cab_id: 80, city: 'Vancover')
# Reservation.create(reserve_date:'2024-01-01',user_id: 24, cab_id: 74, city: 'Benin City')
# Reservation.create(reserve_date:'2023-07-07',user_id: 19, cab_id: 73, city: 'New York')
# Reservation.create(reserve_date:'2023-08-08',user_id: 19, cab_id: 74, city: 'London')
# Reservation.create(reserve_date:'2023-09-09',user_id: 19, cab_id: 75, city: 'Barcelona')
# Reservation.create(reserve_date:'2023-10-10',user_id: 19, cab_id: 76, city: 'Vietnam')
# Reservation.create(reserve_date:'2023-11-11',user_id: 19, cab_id: 77, city: 'Asaba')
# Reservation.create(reserve_date:'2023-12-12',user_id: 24, cab_id: 78, city: 'Vancover')
# Reservation.create(reserve_date:'2024-01-01',user_id: 23, cab_id: 79, city: 'Benin City')