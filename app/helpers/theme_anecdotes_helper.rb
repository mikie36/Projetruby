module ThemeAnecdotesHelper
	def findTheme id
		ThemeAnecdote.find(id)
	end

	def nomTheme id
		Theme.find(id).nom
	end
	def nomAnecdote id
		Anecdote.find(id).recit
	end
end
