@users = [
  {
    name: "Песя",
    email: "user1@test.com",
    password: "testtest",
    description: "Хороший песя",
    avatar_link: "фотка",
    telegram: "897277288",
    whats_app: "9188288",
    telephone: "89883787",
    instagram: "@ivan_yo"
  } ,
  {
    name: "Муся",
    email: "user2@test.com",
    password: "testtest",
    description: "Хороший муся",
    avatar_link: "фотка",
    telegram: "8972772828",
    whats_app: "91881288",
    telephone: "898837847",
    instagram: "@ivan_yo_rap"
  },
  {
    name: "Ванек",
    email: "user3@test.com",
    password: "testtest",
    description: "Хороший песя",
    avatar_link: "фотка",
    telegram: "888972772828",
    whats_app: "9661881288",
    telephone: "89886637847",
    instagram: "@ivan_yo_rap_yo"
  }
]

@cities = [
  { name: 'Москва'},
  { name: 'Санкт-Петербург' },
  { name: 'Рязань' },
  { name: 'Казань'},
  { name: 'Обучение' }
]

@categories = [
  { name: 'Здоровье'},
  { name: 'Красота' },
  { name: 'Спорт' },
  { name: 'Рукоделие'},
  { name: 'Обучение' }
]

@services = [
  {
    name: "Делаю манник",
    description: "круто делаю",
    category_name: "Здоровье",
    user_phone: "89883787"
  },
  {
    name: "Делаю торт",
    description: "круто очень делаю",
    category_name: "Красота",
    user_phone: "89883787"
  },
  {
    name: "Шью носочки",
    description: "круто учу",
    category_name: "Спорт",
    user_phone: "898837847"
  },
  {
    name: "Помою тебе руки",
    description: "круто очень делаю",
    category_name: "Рукоделие",
    user_phone: "89883787"
  },
  {
    name: "Делаю новогодние игрушки",
    description: "круто учу",
    category_name: "Спорт",
    user_phone: "89886637847"
  }
]



def seed
  reset_db
  create_cities(@cities)
  create_users(@users)
  create_categories(@categories)
  create_services(@services)
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_cities(cities)
  cities.each do |city|
    City.create(city)
  end
end

def create_categories(categories)
  categories.each do |category|
    Category.create(category)
  end
end

def create_users(users)
  users.each do |user|
    new_user = User.new
    new_user.name = user[:name]
    new_user.email = user[:email]
    new_user.password = user[:password]
    new_user.description = user[:description]
    new_user.telegram = user[:telegram]
    new_user.instagram = user[:instagram]
    new_user.telephone = user[:telephone]
    new_user.whats_app = user[:instagram]
    new_user.city_id = City.all.sample.id

    new_user.save!
  end
end

def create_services(services)
  services.each do |service|
    new_service = Service.new
    new_service.name = service[:name]
    new_service.description = service[:description]
    new_service.user_id = User.all.sample.id
    new_service.category_id = Category.all.sample.id
    new_service.save!

  end
end

seed
