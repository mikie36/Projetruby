module ScenesHelper
	def nomLieu id
		Lieu.find(id).nom
	end
end
