package tutorials.task;

public class Card {
    private String face;
    private Suit suit;

    public Card(String face, Suit suit) {
        this.face = face;
        this.suit = suit;
    }

    public String getFace() {
        return face;
    }

    public Suit getSuit() {
        return suit;
    }

    @Override
    public String toString() {
        String card = "(" + this.face + " '" + this.suit +"')";

        return card;
    }
}
