class Girl < ApplicationRecord
	def rank(user)
		ranking = Ranking.where(user: user, girl: self).first
		if !ranking
			0
		else
			ranking.rank
		end
	end

	def rank_sum
		Ranking.where(girl_id: id).sum(:rank)
	end
end
