package tutorials.task;

import java.util.ArrayList;

public class Test52Cards {
    public static void main(String[] args) {
        ArrayList<Card> cards = new ArrayList<Card>();
        String[] allFaces = new String[] {"2", "3", "4", "5",
                "6", "7", "8", "9", "10", "J", "Q", "K", "A"};
        Suit[] allSuits = new Suit[] {
                Suit.CLUB, Suit.DIAMOND, Suit.HEART, Suit.SPADE};

        for (String face : allFaces) {
            for (Suit suit : allSuits) {
                Card card = new Card(face, suit);
                cards.add(card);
            }
        }

        CardsShuffle.shuffleCards(cards);
        CardsShuffle.printCards(cards);
    }
}
