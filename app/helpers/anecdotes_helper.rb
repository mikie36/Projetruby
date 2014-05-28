module AnecdotesHelper
	def nomSujet id
		Sujet.find(id).nom
	end
	def nomSelf id
		Anecdote.find(id).nom
	end

end
