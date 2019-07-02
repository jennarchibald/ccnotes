require_relative('models/casting')
require_relative('models/movie')
require_relative('models/performer')

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Performer.delete_all()


  movie1 = Movie.new({
    'title' => 'La La Land',
    'genre' => 'musical',
    'budget' => 30000000
  })

  movie1.save()


  movie2 = Movie.new({
    'title' => 'Gangster Squad',
    'genre' => 'action crime',
    'budget' => 75000000
  })

  movie2.save()

  movie3 = Movie.new({
    'title' => 'Crazy Stupid Love',
    'genre' => 'romantic comedy',
    'budget' => 50000000
  })

  movie3.save()

  performer1 = Performer.new({
    'first_name' => 'Emma',
    'last_name' => 'Stone'
  })

  performer1.save()


  performer2 = Performer.new({
    'first_name' => 'Ryan',
    'last_name' => 'Gosling'
  })

  performer2.save()

  performer3 = Performer.new({
    'first_name' => 'Nick',
    'last_name' => 'Nolte'
  })

  performer3.save()

  casting1 = Casting.new({'movie_id' => movie1.id, 'performer_id' => performer1.id, 'fee' => 5000000})
  casting2 = Casting.new({'movie_id' => movie1.id, 'performer_id' => performer2.id, 'fee' => 5000000})
  casting3 = Casting.new({'movie_id' => movie2.id, 'performer_id' => performer1.id, 'fee' => 10000000})
  casting4 = Casting.new({'movie_id' => movie2.id, 'performer_id' => performer2.id, 'fee' => 7000000})
  casting5 = Casting.new({'movie_id' => movie2.id, 'performer_id' => performer3.id, 'fee' => 5000})
  casting6 = Casting.new({'movie_id' => movie3.id, 'performer_id' => performer1.id, 'fee' => 1000000})
  casting7 = Casting.new({'movie_id' => movie3.id, 'performer_id' => performer2.id, 'fee' => 1000000})

  casting1.save()
  casting2.save()
  casting3.save()
  casting4.save()
  casting5.save()
  casting6.save()
  casting7.save()

  binding.pry
  nil
