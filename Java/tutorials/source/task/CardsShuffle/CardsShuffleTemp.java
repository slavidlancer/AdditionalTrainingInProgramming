import java.util.ArrayList;

public class CardsShuffle {
	public static void main(String[] args) {
		ArrayList<Card> cards = new ArrayList<Card>();
		cards.add(new Card("2", Suit.CLUB));
		cards.add(new Card("7", Suit.HEART));
		cards.add(new Card("A", Suit.SPADE));
		cards.add(new Card("J", Suit.CLUB));
		cards.add(new Card("10", Suit.DIAMOND));
		printCards(cards);
	}

	public static void printCards(ArrayList<Card> cards) {
		for (Card card : cards) {
			System.out.print(card);
		}

		System.out.println();
	}

	private static void performSingleExchange(
			ArrayList<Card> cards) {
		Random rand = new Random();
		int randomIndex = 1 + rand.nextInt(cards.size()-2);
		Card firstCard = cards.get(1);
		Card randomCard = cards.get(randomIndex);
		cards.set(1, randomCard);
		cards.set(randomIndex, firstCard);
	}

	public static void shuffleCards(ArrayList<Card> cards) {
		for (int i = 1; i <= cards.size(); i++) {
			performSingleExchange(cards);
		}
	}
}

/*
ArrayList<Card> cards = new ArrayList<Card>();
cards.add(new Card("2", Suit.CLUB));
cards.add(new Card("3", Suit.HEART));
cards.add(new Card("4", Suit.SPADE));
performSingleExchange(cards);
printCards(cards);
*/

/*
private static void performSingleExchange(
ArrayList<Card> cards){
Random rand = new Random();
int randomIndex = 1 + rand.nextInt(cards.size()-2);
Card firstCard = cards.get(0);
Card randomCard = cards.get(randomIndex);
cards.set(0, randomCard);
cards.set(randomIndex, firstCard);
}

private static void performSingleExchange(
ArrayList<Card> cards){
Random rand = new Random();
int randomIndex = 1 + rand.nextInt(cards.size()-1);
Card firstCard = cards.get(0);
Card randomCard = cards.get(randomIndex);
cards.set(0, randomCard);
cards.set(randomIndex, firstCard);
}
*/
