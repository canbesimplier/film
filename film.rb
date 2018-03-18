require_relative 'lib/film'

search_all_files = Dir.glob("films/*.txt")
films = search_all_files.map {|files| Film.new(files)}

directors = films.map(&:director)

puts "Какой режиссер сегодня вам больше всего симпатизирует?"
directors.uniq.each_with_index do |director,index|
  puts "#{index += 1}. #{director}"
end

input_user = STDIN.gets.to_i
user_choise = directors[input_user - 1]

puts "Ваш выбор на сегодня режиссер #{user_choise}"

director_films = films.select {|film| film.director == user_choise}

choisen_film = director_films.sample

puts "Посмотрите сегодня: #{choisen_film}"
