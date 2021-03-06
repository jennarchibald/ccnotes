import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;

import static org.junit.Assert.assertEquals;

public class GameTest {
    Game game;
    Player player1;
    Player player2;
    Hand hand1;
    Hand hand2;
    ArrayList<Player> players;
    Dealer dealer;
    Deck deck;
    Card card1;
    Card card2;
    Card card3;
    Card card4;

    @Before
    public void before(){
        deck = new Deck();
        hand1 = new Hand();
        hand2 = new Hand();
        dealer = new Dealer("Dealer");
        player1 = new Player("Player 1", hand1);
        player2 = new Player("Player 2", hand2);
        players = new ArrayList<>();
        players.add(player1);
        players.add(player2);
         card1 = new Card(Suit.CLUBS, Rank.ACE);
         card2 = new Card(Suit.CLUBS, Rank.QUEEN);
         card3 = new Card(Suit.DIAMONDS, Rank.KING);
         card4 = new Card(Suit.HEARTS, Rank.EIGHT);

        game = new Game(deck, players, dealer);
    }

    @Test
    public void testGameStarted(){
        game.startGame();
        assertEquals(2, player1.getHand().getNumberOfCards());
        assertEquals(2, player2.getHand().getNumberOfCards());
    }

    @Test
    public void testTwist(){
        game.startGame();
        game.twist(player1);
        assertEquals(3, player1.getHand().getNumberOfCards());
    }

    @Test
    public void testCantTwistIfBust(){
        player1.addCardToHand(card2);
        player1.addCardToHand(card3);
        player1.addCardToHand(card4);
        game.twist(player1);
        assertEquals(3, player1.getHand().getNumberOfCards());
    }

    @Test
    public void testPlayerIsBust(){
        player1.addCardToHand(card2);
        player1.addCardToHand(card3);
        player1.addCardToHand(card4);
        game.twist(player1);
        assertEquals(true, player1.isBust());
    }

    @Test
    public void testWinner(){
        player1.addCardToHand(card1);
        player1.addCardToHand(card2);
        player2.addCardToHand(card3);
        player2.addCardToHand(card4);
        Player winner = game.checkWinner();
        assertEquals("Player 2", winner.getName());
    }
}
