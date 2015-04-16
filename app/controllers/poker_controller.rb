class PokerController < ApplicationController

	def deal

		@suit = ["hearts", "spades", "diamonds", "clubs"]
		@number = ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king"]
		@deck = []

		loop do
			card = @number.sample.to_s + "_of_" + @suit.sample.to_s
			@deck << card unless @deck.include?(card)
			break if @deck.length == 52
		end


	end
end

