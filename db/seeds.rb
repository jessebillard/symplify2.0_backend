# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Board.destroy_all
List.destroy_all
Note.destroy_all

Board.create(title: 'sick board', user_id: '1', list_order: ['2', '3', '4'])
Board.create(title: 'another sick board', user_id: '1', )
Board.create(title: 'wicked sick board', user_id: '1', )

List.create(title: 'todo', status: 'incomplete', board_id: 11, note_order: ['1', '2', '3'])
List.create(title: 'today', status: 'in progress', board_id: 11, note_order: ['4', '5',])
List.create(title: 'done', status: 'in progress', board_id: 11, note_order: ['6', '7'])

Note.create(title: 'dishes', description: 'ok martha stewart', status: 'complete', list_id: 8)
Note.create(title: 'laundry', description: 'stuff smells', status: 'complete', list_id: 8)
Note.create(title: 'grocery', description: 'need grub', status: 'complete', list_id: 8)
Note.create(title: 'exercise', description: 'get fit boi', status: 'complete', list_id: 9)
Note.create(title: 'eat the foods', description: 'all the foods', status: 'complete', list_id: 9)
Note.create(title: 'take a nap', description: 'naps are dank', status: 'complete', list_id: 10)
Note.create(title: 'go to bed early', description: 'sleep is dank', status: 'complete', list_id: 10)
