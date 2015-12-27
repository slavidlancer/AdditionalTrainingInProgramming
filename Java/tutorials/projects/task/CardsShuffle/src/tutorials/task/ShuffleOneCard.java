package tutorials.task;

import java.util.ArrayList;

public class ShuffleOneCard {
    public static void main(String[] args) {
        ArrayList<Card> cards = new ArrayList<Card>();
        cards.add(new Card("A", Suit.CLUB));

        CardsShuffle.shuffleCards(cards);
        CardsShuffle.printCards(cards);
    }
}
