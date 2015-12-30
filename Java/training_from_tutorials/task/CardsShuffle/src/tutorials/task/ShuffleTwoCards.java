package tutorials.task;

import java.util.ArrayList;

public class ShuffleTwoCards {
    public static void main(String[] args) {
        ArrayList<Card> cards = new ArrayList<Card>();
        cards.add(new Card("A", Suit.CLUB));
        cards.add(new Card("3", Suit.CLUB));

        CardsShuffle.printCards(cards);
        CardsShuffle.shuffleCards(cards);
        CardsShuffle.printCards(cards);
    }
}
