import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DealerTest {
    Dealer dealer;
    Player player;
    Hand hand;
    Deck deck;
    Card card1;
    Card card2;

    @Before
    public void setup(){
        deck = new Deck();
        hand = new Hand();
        dealer = new Dealer("Dealer");
        player = new Player("Player 1 ", hand);
        card1 = new Card(Suit.HEARTS, Rank.ACE);
        card2 = new Card(Suit.CLUBS, Rank.QUEEN);
    }

    @Test
    public void dealerCanDeal(){
        dealer.dealCard(player, deck);
        assertEquals(1, player.getHand().getNumberOfCards());
    }

}
