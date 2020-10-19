class Deck
    attr_accessor :cards

    def initialize
        self.make_deck
    end

    def make_deck
        @cards = []
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

        for i in 0...suits.length
            for j in 0... ranks.length
                new_card = Card.new(i, j)
                @cards << new_card
            end
        end
    end

    def choose_card 
        card = cards.sample
        cards.delete(card)
    end
end

class Card

    attr_accessor :suit, :rank
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
