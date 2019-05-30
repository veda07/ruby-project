configure :production, :development do 
	# setting up the database/ if there is URL use 1st one, or if it's local do 2nd one
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/women_of_tech')

	ActiveRecord: :Base.establish_connection(
		:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme, 
		:host => db.host,
		:username => db.user,
		:password => db.password
		:database => db.path[1..-1],
		:encoding => 'utf8'
	)
end

