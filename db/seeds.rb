g = Gym.create!(name: "Fabrica de Presidentes 13", cnpj: "1234567891212", tel: "33311111")

Employee.create!(name: "Luiz Inacio", password: "123456",
password_confirmation: "123456", tel: "33327323", cpf: "12345678912",
email: "lula@fitness.com", gym: g)
