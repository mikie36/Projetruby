module ChapitresHelper
	def nomScene id
		if id != nil
		Scene.find(id).nom
	end
	end
	def nomAnecdote id
		if id != nil
		Anecdote.find(id).nom
	end
	end
end
