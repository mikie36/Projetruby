module SceneChapitresHelper
	def findScene id
		SceneChapitre.find(id)
	end

	def nomChapitre id
		Chapitre.find(id).titre
	end
	def nomScene id
		Scene.find(id).recit
	end
end
