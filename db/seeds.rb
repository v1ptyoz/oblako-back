# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create([{title: 'Семья'}, {title: 'Работа'}, {title: 'Прочее'}])
todos = Todo.create([{text: 'Купить молоко', isCompleted: false, category_id: 1},{text: 'Заменить масло', isCompleted: false, category_id: 1},{text: 'Заплатить за квартиру', isCompleted: false, category_id: 1},{text: 'Отправить письмо', isCompleted: true, category_id: 1}, {text: 'Позвонить заказчику', isCompleted: true, category_id: 2}, {text: 'Заполнить отчет', isCompleted: false, category_id: 2},{text: 'Отправить документы', isCompleted: true, category_id: 2},{text: 'Позвонить другу', isCompleted: false, category_id: 3},{text: 'Собрать чемоданы', isCompleted: false, category_id: 3}])