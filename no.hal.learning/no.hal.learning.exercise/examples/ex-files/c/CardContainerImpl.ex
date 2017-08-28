<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="CardContainer">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the CardContainerImpl superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CardContainerImpl"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Update the source code for the CardDeck class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CardDeck"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Update the source code for the CardHand class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CardHand"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CardContainer interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CardContainer"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardDeckTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CardDeckTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardHandTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CardHandTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardDeck class."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CardDeck"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardHand class."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CardHand"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardContainerImpl class."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CardContainerImpl"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458149111667" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CardContainerImpl {&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148518145" sizeMeasure="117" errorCount="30">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.List;&#xA;&#xA;public class CardDeck {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;List&lt;Character> validSuitCharacterList = Arrays.asList('S','H','D','C');&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;if (n > 13 || n &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! The input must be an &quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&quot;integer in the range 0-13.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (char suitCharacter : validSuitCharacterList) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card newCard = new Card(suitCharacter,i+1);&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(newCard);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount of cards in the deck&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card at index, else illegal argument exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndexForCardDeck(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;private void checkIndexForCardDeck(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//takes n last card objects from the deck and puts it in the card hand&#xA;&#x9;public void deal(CardHand cardHand, int n) {&#xA;&#x9;&#x9;checkIndexForCardDeck(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;Card currentCard = cards.get(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cards.remove(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cardHand.addCard(currentCard);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void  shufflePerfectly() {&#xA;&#x9;&#x9;//create an array list to contain the first half of the deck&#xA;&#x9;&#x9;List&lt;Card> firstHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;//create an array list to contain the second half of the deck&#xA;&#x9;&#x9;List&lt;Card> secondHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;int cardCount = cards.size();&#xA;&#x9;&#x9;//check whether the amount is an even number or not&#xA;&#x9;&#x9;if (cardCount % 2 == 0) {&#xA;&#x9;&#x9;&#x9;int middleIndex = cardCount/2;&#xA;&#x9;&#x9;&#x9;//distribute the deck into first and second half&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;//clears the cards from the deck in order to add them back again&#xA;&#x9;&#x9;&#x9;//in the shuffled order&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;//adds the cards back to the deck&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;//if the deck is not an even deck, we add an additional card to the&#xA;&#x9;&#x9;&#x9;//first half of the deck. Besides this, it's analogous to the &#xA;&#x9;&#x9;&#x9;//procedure for an even deck&#xA;&#x9;&#x9;&#x9;int middleIndex = (int) Math.ceil(cardCount/2);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String cardDeckAsString = &quot;[ &quot;;&#xA;&#x9;&#x9;for (Card card : cards) {&#xA;&#x9;&#x9;&#x9;cardDeckAsString += card.toString() + &quot;, &quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeckAsString += &quot;]&quot;;&#xA;&#x9;&#x9;return cardDeckAsString;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck _cardDeck = new CardDeck(2);&#xA;&#x9;&#x9;CardHand cardHand = new CardHand();&#xA;&#x9;&#x9;_cardDeck.deal(cardHand, 3);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148528957" sizeMeasure="117" errorCount="30">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.List;&#xA;&#xA;public class CardDeck {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;List&lt;Character> validSuitCharacterList = Arrays.asList('S','H','D','C');&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;if (n > 13 || n &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! The input must be an &quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&quot;integer in the range 0-13.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (char suitCharacter : validSuitCharacterList) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card newCard = new Card(suitCharacter,i+1);&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(newCard);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount of cards in the deck&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card at index, else illegal argument exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndexForCardDeck(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;private void checkIndexForCardDeck(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//takes n last card objects from the deck and puts it in the card hand&#xA;&#x9;public void deal(CardHand cardHand, int n) {&#xA;&#x9;&#x9;checkIndexForCardDeck(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;Card currentCard = cards.get(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cards.remove(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cardHand.addCard(currentCard);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void  shufflePerfectly() {&#xA;&#x9;&#x9;//create an array list to contain the first half of the deck&#xA;&#x9;&#x9;List&lt;Card> firstHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;//create an array list to contain the second half of the deck&#xA;&#x9;&#x9;List&lt;Card> secondHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;int cardCount = cards.size();&#xA;&#x9;&#x9;//check whether the amount is an even number or not&#xA;&#x9;&#x9;if (cardCount % 2 == 0) {&#xA;&#x9;&#x9;&#x9;int middleIndex = cardCount/2;&#xA;&#x9;&#x9;&#x9;//distribute the deck into first and second half&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;//clears the cards from the deck in order to add them back again&#xA;&#x9;&#x9;&#x9;//in the shuffled order&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;//adds the cards back to the deck&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;//if the deck is not an even deck, we add an additional card to the&#xA;&#x9;&#x9;&#x9;//first half of the deck. Besides this, it's analogous to the &#xA;&#x9;&#x9;&#x9;//procedure for an even deck&#xA;&#x9;&#x9;&#x9;int middleIndex = (int) Math.ceil(cardCount/2);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String cardDeckAsString = &quot;[ &quot;;&#xA;&#x9;&#x9;for (Card card : cards) {&#xA;&#x9;&#x9;&#x9;cardDeckAsString += card.toString() + &quot;, &quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeckAsString += &quot;]&quot;;&#xA;&#x9;&#x9;return cardDeckAsString;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck _cardDeck = new CardDeck(2);&#xA;&#x9;&#x9;CardHand cardHand = new CardHand();&#xA;&#x9;&#x9;_cardDeck.deal(cardHand, 3);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148866682" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148889689" sizeMeasure="117" errorCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;public class CardDeck implements CardContainer {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;List&lt;Character> validSuitCharacterList = Arrays.asList('S','H','D','C');&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;if (n > 13 || n &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! The input must be an &quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&quot;integer in the range 0-13.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (char suitCharacter : validSuitCharacterList) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card newCard = new Card(suitCharacter,i+1);&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(newCard);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount of cards in the deck&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card at index, else illegal argument exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndexForCardDeck(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;private void checkIndexForCardDeck(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//takes n last card objects from the deck and puts it in the card hand&#xA;&#x9;public void deal(CardHand cardHand, int n) {&#xA;&#x9;&#x9;checkIndexForCardDeck(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;Card currentCard = cards.get(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cards.remove(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cardHand.addCard(currentCard);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void  shufflePerfectly() {&#xA;&#x9;&#x9;//create an array list to contain the first half of the deck&#xA;&#x9;&#x9;List&lt;Card> firstHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;//create an array list to contain the second half of the deck&#xA;&#x9;&#x9;List&lt;Card> secondHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;int cardCount = cards.size();&#xA;&#x9;&#x9;//check whether the amount is an even number or not&#xA;&#x9;&#x9;if (cardCount % 2 == 0) {&#xA;&#x9;&#x9;&#x9;int middleIndex = cardCount/2;&#xA;&#x9;&#x9;&#x9;//distribute the deck into first and second half&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;//clears the cards from the deck in order to add them back again&#xA;&#x9;&#x9;&#x9;//in the shuffled order&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;//adds the cards back to the deck&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;//if the deck is not an even deck, we add an additional card to the&#xA;&#x9;&#x9;&#x9;//first half of the deck. Besides this, it's analogous to the &#xA;&#x9;&#x9;&#x9;//procedure for an even deck&#xA;&#x9;&#x9;&#x9;int middleIndex = (int) Math.ceil(cardCount/2);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String cardDeckAsString = &quot;[ &quot;;&#xA;&#x9;&#x9;for (Card card : cards) {&#xA;&#x9;&#x9;&#x9;cardDeckAsString += card.toString() + &quot;, &quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeckAsString += &quot;]&quot;;&#xA;&#x9;&#x9;return cardDeckAsString;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;Card> iterator() {&#xA;&#x9;&#x9;return new CardContainerIterator(this);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148895576" sizeMeasure="117">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;public class CardDeck implements CardContainer {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;List&lt;Character> validSuitCharacterList = Arrays.asList('S','H','D','C');&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;if (n > 13 || n &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! The input must be an &quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&quot;integer in the range 0-13.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (char suitCharacter : validSuitCharacterList) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card newCard = new Card(suitCharacter,i+1);&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(newCard);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount of cards in the deck&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card at index, else illegal argument exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndexForCardDeck(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;private void checkIndexForCardDeck(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//takes n last card objects from the deck and puts it in the card hand&#xA;&#x9;public void deal(CardHand cardHand, int n) {&#xA;&#x9;&#x9;checkIndexForCardDeck(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;Card currentCard = cards.get(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cards.remove(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cardHand.addCard(currentCard);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void  shufflePerfectly() {&#xA;&#x9;&#x9;//create an array list to contain the first half of the deck&#xA;&#x9;&#x9;List&lt;Card> firstHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;//create an array list to contain the second half of the deck&#xA;&#x9;&#x9;List&lt;Card> secondHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;int cardCount = cards.size();&#xA;&#x9;&#x9;//check whether the amount is an even number or not&#xA;&#x9;&#x9;if (cardCount % 2 == 0) {&#xA;&#x9;&#x9;&#x9;int middleIndex = cardCount/2;&#xA;&#x9;&#x9;&#x9;//distribute the deck into first and second half&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;//clears the cards from the deck in order to add them back again&#xA;&#x9;&#x9;&#x9;//in the shuffled order&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;//adds the cards back to the deck&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;//if the deck is not an even deck, we add an additional card to the&#xA;&#x9;&#x9;&#x9;//first half of the deck. Besides this, it's analogous to the &#xA;&#x9;&#x9;&#x9;//procedure for an even deck&#xA;&#x9;&#x9;&#x9;int middleIndex = (int) Math.ceil(cardCount/2);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String cardDeckAsString = &quot;[ &quot;;&#xA;&#x9;&#x9;for (Card card : cards) {&#xA;&#x9;&#x9;&#x9;cardDeckAsString += card.toString() + &quot;, &quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeckAsString += &quot;]&quot;;&#xA;&#x9;&#x9;return cardDeckAsString;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;Card> iterator() {&#xA;&#x9;&#x9;return new CardContainerIterator(this);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148993833" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458149025455" sizeMeasure="117">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;public class CardDeck implements CardContainer {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;List&lt;Character> validSuitCharacterList = Arrays.asList('S','H','D','C');&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;if (n > 13 || n &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! The input must be an &quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&quot;integer in the range 0-13.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (char suitCharacter : validSuitCharacterList) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card newCard = new Card(suitCharacter,i+1);&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(newCard);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount of cards in the deck&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card at index, else illegal argument exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndexForCardDeck(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;private void checkIndexForCardDeck(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//takes n last card objects from the deck and puts it in the card hand&#xA;&#x9;public void deal(CardHand cardHand, int n) {&#xA;&#x9;&#x9;checkIndexForCardDeck(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;Card currentCard = cards.get(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cards.remove(cards.size() - 1);&#xA;&#x9;&#x9;&#x9;cardHand.addCard(currentCard);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void  shufflePerfectly() {&#xA;&#x9;&#x9;//create an array list to contain the first half of the deck&#xA;&#x9;&#x9;List&lt;Card> firstHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;//create an array list to contain the second half of the deck&#xA;&#x9;&#x9;List&lt;Card> secondHalf = new ArrayList&lt;>();&#xA;&#x9;&#x9;int cardCount = cards.size();&#xA;&#x9;&#x9;//check whether the amount is an even number or not&#xA;&#x9;&#x9;if (cardCount % 2 == 0) {&#xA;&#x9;&#x9;&#x9;int middleIndex = cardCount/2;&#xA;&#x9;&#x9;&#x9;//distribute the deck into first and second half&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;//clears the cards from the deck in order to add them back again&#xA;&#x9;&#x9;&#x9;//in the shuffled order&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;//adds the cards back to the deck&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;//if the deck is not an even deck, we add an additional card to the&#xA;&#x9;&#x9;&#x9;//first half of the deck. Besides this, it's analogous to the &#xA;&#x9;&#x9;&#x9;//procedure for an even deck&#xA;&#x9;&#x9;&#x9;int middleIndex = (int) Math.ceil(cardCount/2);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; middleIndex; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;firstHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;for (int i = middleIndex; i &lt; cardCount; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;secondHalf.add(cards.get(i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;cards.clear();&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; firstHalf.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(firstHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;cards.add(secondHalf.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String cardDeckAsString = &quot;[ &quot;;&#xA;&#x9;&#x9;for (Card card : cards) {&#xA;&#x9;&#x9;&#x9;cardDeckAsString += card.toString() + &quot;, &quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeckAsString += &quot;]&quot;;&#xA;&#x9;&#x9;return cardDeckAsString;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;Card> iterator() {&#xA;&#x9;&#x9;return new CardContainerIterator(this);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148518146" sizeMeasure="48">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class CardHand {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardHand() {&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount (an int) of cards at hand&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card (a Card object) at index, else an exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;//adds a Card object to hand&#xA;&#x9;public void addCard(Card card) {&#xA;&#x9;&#x9;cards.add(card);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card object at index and removes it from the hand&#xA;&#x9;public Card play(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;Card cardOfInterest = cards.get(index);&#xA;&#x9;&#x9;cards.remove(index);&#xA;&#x9;&#x9;return cardOfInterest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//checks that the index is a valid index for the list of cards&#xA;&#x9;private void checkIndex(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;}&#x9;&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148547423" sizeMeasure="48" errorCount="12">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class CardHand {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardHand() {&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount (an int) of cards at hand&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card (a Card object) at index, else an exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;//adds a Card object to hand&#xA;&#x9;public void addCard(Card card) {&#xA;&#x9;&#x9;cards.add(card);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card object at index and removes it from the hand&#xA;&#x9;public Card play(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;Card cardOfInterest = cards.get(index);&#xA;&#x9;&#x9;cards.remove(index);&#xA;&#x9;&#x9;return cardOfInterest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//checks that the index is a valid index for the list of cards&#xA;&#x9;private void checkIndex(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;}&#x9;&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148870947" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148889691" sizeMeasure="54">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;public class CardHand implements CardContainer {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardHand() {&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount (an int) of cards at hand&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card (a Card object) at index, else an exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;//adds a Card object to hand&#xA;&#x9;public void addCard(Card card) {&#xA;&#x9;&#x9;cards.add(card);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card object at index and removes it from the hand&#xA;&#x9;public Card play(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;Card cardOfInterest = cards.get(index);&#xA;&#x9;&#x9;cards.remove(index);&#xA;&#x9;&#x9;return cardOfInterest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//checks that the index is a valid index for the list of cards&#xA;&#x9;private void checkIndex(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;Card> iterator() {&#xA;&#x9;&#x9;return new CardContainerIterator(this);&#xA;&#x9;}&#xA;&#x9;&#xA;}&#x9;&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148993398" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458149025457" sizeMeasure="54">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;public class CardHand implements CardContainer {&#xA;&#xA;&#x9;//internal state&#xA;&#x9;List&lt;Card> cards;&#xA;&#x9;&#xA;&#x9;//constructor&#xA;&#x9;public CardHand() {&#xA;&#x9;&#x9;cards = new ArrayList&lt;>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the amount (an int) of cards at hand&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cards.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card (a Card object) at index, else an exception is raised&#xA;&#x9;public Card getCard(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;return cards.get(index);&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;//adds a Card object to hand&#xA;&#x9;public void addCard(Card card) {&#xA;&#x9;&#x9;cards.add(card);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//returns the card object at index and removes it from the hand&#xA;&#x9;public Card play(int index) {&#xA;&#x9;&#x9;checkIndex(index);&#xA;&#x9;&#x9;Card cardOfInterest = cards.get(index);&#xA;&#x9;&#x9;cards.remove(index);&#xA;&#x9;&#x9;return cardOfInterest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//checks that the index is a valid index for the list of cards&#xA;&#x9;private void checkIndex(int index) {&#xA;&#x9;&#x9;if (index &lt; 0 || index >= cards.size()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;ERROR! Invalid index input.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;Card> iterator() {&#xA;&#x9;&#x9;return new CardContainerIterator(this);&#xA;&#x9;}&#xA;&#x9;&#xA;}&#x9;&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1458148889692" sizeMeasure="8">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public interface CardContainer extends Iterable&lt;Card> {&#xA;&#xA;&#x9;public int getCardCount();&#xA;&#x9;public Card getCard(int n);&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.6/@q" answer="/0/@parts.1/@tasks.6/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
