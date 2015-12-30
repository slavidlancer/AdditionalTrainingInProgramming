package tutorials.task;

import java.util.ArrayList;
import java.util.Random;

public class CardsShuffle {
    public static void performSingleExchange(ArrayList<Card> cards) {
        Random rand = new Random();
        int randomIndex = 1 + rand.nextInt(cards.size() - 1);
        Card firstCard = cards.get(0);
        Card randomCard = cards.get(randomIndex);

        cards.set(0, randomCard);
        cards.set(randomIndex, firstCard);
    }

    public static void shuffleCards(ArrayList<Card> cards) {
		/*for (int i = 1; i <= cards.size(); i++) {
			performSingleExchange(cards);
		}*/
		/*if (cards.size() > 1) {
			for (int i = 1; i <= cards.size(); i++) {
				performSingleExchange(cards);
			}
		}*/

        if (cards.size() > 1) {
            Random rand = new Random();
            int exchangesCount = cards.size() + rand.nextInt(2);

            for (int i = 1; i <= exchangesCount; i++) {
                performSingleExchange(cards);
            }
        }
    }

    public static void printCards(ArrayList<Card> cards) {
        for (Card card : cards) {
            System.out.print(card);
        }

        System.out.println();
    }

    public static void main(String[] args) {
        ArrayList<Card> cards = new ArrayList<Card>();
        cards.add(new Card("2", Suit.CLUB));
        cards.add(new Card("7", Suit.HEART));
        cards.add(new Card("A", Suit.SPADE));
        cards.add(new Card("J", Suit.CLUB));
        cards.add(new Card("10", Suit.DIAMOND));

        System.out.println("Initial deck: ");

        printCards(cards);
        shuffleCards(cards);

        System.out.println("After shuffle: ");

        printCards(cards);
    }
}
