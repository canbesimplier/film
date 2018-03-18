class Film

  attr_accessor :name, :director, :year

	def initialize(search_all_files)
    lines = File.readlines(search_all_files)

    @name = lines[0].strip
		@director = lines[1].strip
		@year = lines[2].strip
  end

  def to_s
    "#{name}(#{year})"+"\nРежиссер: #{director}"
  end
end

