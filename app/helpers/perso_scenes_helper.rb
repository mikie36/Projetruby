module PersoScenesHelper
	def nomScene id
		Scene.find(id).recit
	end
end
