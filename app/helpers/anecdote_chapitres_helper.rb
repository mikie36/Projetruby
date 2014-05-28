module AnecdoteChapitresHelper
	def findAnecdote id
		AnecdoteChapitre.find(id)
	end

	def nomChapitre id
		Chapitre.find(id).titre
	end
	def nomAnecdote id
		Anecdote.find(id).recit
	end
end
