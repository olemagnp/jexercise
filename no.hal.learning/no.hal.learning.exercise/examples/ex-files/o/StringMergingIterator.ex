<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StringMergingIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Copy the source code for the StringMergingIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="debugging.StringMergingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Copy the source code for the StringMergingIteratorProgram class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="debugging.StringMergingIteratorProgram"/>
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
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457025557489" sizeMeasure="52">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(! second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457025562195" sizeMeasure="52">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(! second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457027059803" sizeMeasure="52">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457027078209" sizeMeasure="52">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457030847895" sizeMeasure="54">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(first.hasNext() &amp;&amp; turnSwitch){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457030850629" sizeMeasure="54">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(first.hasNext() &amp;&amp; turnSwitch){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028445271" sizeMeasure="41">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028489123" sizeMeasure="41">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028504978" sizeMeasure="42">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;System.out.println(expectedOutput);&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028525657" sizeMeasure="42">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;System.out.println(expectedOutput);&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028534550" sizeMeasure="42">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;forventet &quot; + expectedOutput);&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028613867" sizeMeasure="44">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;System.out.println(values.size());&#xA;&#x9;&#x9;&#x9;System.out.println(expectedOutput.size());&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;forventet &quot; + expectedOutput);&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028638220" sizeMeasure="44">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(values.size());&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(expectedOutput.size());&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;forventet &quot; + expectedOutput);&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457028650066" sizeMeasure="42">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;forventet &quot; + expectedOutput);&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457029701037" sizeMeasure="42">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;&#x9;System.out.println(values);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;forventet &quot; + expectedOutput);&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457030930386" sizeMeasure="40">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1457082535896" sizeMeasure="40">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a" performedCount="51">
        <attempts timestamp="1457027374439"/>
        <attempts timestamp="1457027374439"/>
        <attempts timestamp="1457027411965"/>
        <attempts timestamp="1457027413364"/>
        <attempts timestamp="1457027413364"/>
        <attempts timestamp="1457027415401"/>
        <attempts timestamp="1457027416601"/>
        <attempts timestamp="1457027418051"/>
        <attempts timestamp="1457027454202"/>
        <attempts timestamp="1457027456965"/>
        <attempts timestamp="1457027456965"/>
        <attempts timestamp="1457027458730"/>
        <attempts timestamp="1457027459586"/>
        <attempts timestamp="1457027459586"/>
        <attempts timestamp="1457027460736"/>
        <attempts timestamp="1457027461978"/>
        <attempts timestamp="1457027463516"/>
        <attempts timestamp="1457027464958"/>
        <attempts timestamp="1457027467153"/>
        <attempts timestamp="1457027467153"/>
        <attempts timestamp="1457027468741"/>
        <attempts timestamp="1457027512763"/>
        <attempts timestamp="1457027512763"/>
        <attempts timestamp="1457027513895"/>
        <attempts timestamp="1457027514771"/>
        <attempts timestamp="1457027515275"/>
        <attempts timestamp="1457027515692"/>
        <attempts timestamp="1457027516139"/>
        <attempts timestamp="1457027517609"/>
        <attempts timestamp="1457027517609"/>
        <attempts timestamp="1457027518353"/>
        <attempts timestamp="1457027518960"/>
        <attempts timestamp="1457027518960"/>
        <attempts timestamp="1457027519803"/>
        <attempts timestamp="1457027520419"/>
        <attempts timestamp="1457027520827"/>
        <attempts timestamp="1457027521144"/>
        <attempts timestamp="1457027521600"/>
        <attempts timestamp="1457027522433"/>
        <attempts timestamp="1457027522433"/>
        <attempts timestamp="1457027523029"/>
        <attempts timestamp="1457027523336"/>
        <attempts timestamp="1457027523336"/>
        <attempts timestamp="1457027523714"/>
        <attempts timestamp="1457027524095"/>
        <attempts timestamp="1457027524419"/>
        <attempts timestamp="1457027524698"/>
        <attempts timestamp="1457027525104"/>
        <attempts timestamp="1457027525571"/>
        <attempts timestamp="1457027525571"/>
        <attempts timestamp="1457027526069"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="2">
        <attempts timestamp="1457027137703"/>
        <attempts timestamp="1457027420487"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
