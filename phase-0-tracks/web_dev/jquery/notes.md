<!-- <html>
		<head>
			<script type="text/javascript" src="https://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js"></script>
			<script type="text/javascript">
			$(document).ready(function(){
				$("a").click(function(event){
				alert("You clicked me!");
		});
	});
			</script>
		</head>
		<body>
			<a href="#">Click Me</a>	
		</body>
	</html> -->

The above is an example of how JQuery would look in a html file.

The below notes are from http://helpful.knobs-dials.com/index.php/JQuery_notes_/_Introduction,_some_basics,_examples

jQuery aims to make JS coding simpler and more productive (one of a number of such libraries).
It mostly
hides most browser-specifics
centers around ease of selecting elements, and doing things to them,
e.g. hooking in events, adding content.

As far as I can see, there are two main reasons not to use it (or something like it), namely:
you have a platform, like Angular, which already does most of the DOM-manipulation and app-communication for you, without you having to know about it
(counterargument: ...and then you do want to tweak something :)
you can write lean cross-browser javascript yourself. Chances are it'll be more efficient
(counterargument: you will still be re-inventing work, and cross-browser takes time)

Introductory examples
A jQuery object (usually) represents a selection of DOM elements. Most functions can be called on any of these jQuery object, which usually means 'do this to all of the selection'.

To get a feel of what jQuery code looks like:
// select all nodes with class 'headerclass', make it red bold text
$('.headerclass').css({color:"#993300", fontWeight:"bold"})
// add an outline to every element on the page:
$('*').css('outline','1px solid red')
(You wouldn't generally use jquery for CSS styling, but it's a readable example)

Functions on these selections return a selection. Alterations will typically return the same selection, so that you can easily chain things, e.g.
// This means you can chain multiple alterations like:
$('.headerclass').css({color:"#993300", fontWeight:"bold"}).addClass('highlight');

Navigation functions (and some others) alter the selection, e.g.
// Basic example:
//   Select all 'img' nodes, show a red outline;
//   then make a new selection of all parents of the current selection, and show a blue outline on them:
$('img').css('outline','1px solid red').parents().css('outline','1px solid blue');
// More complex example:
//  Find each h2 element with the 'title' class,
//  and when clicked, toggle the visibility of the div sibling after it
$('h2.title').click(function(){ $(this).next('div').toggle() })

Functions may do other things (than altering the page or the selection), such as...
// - things that apply to the whole set:
alert( 'There are '+$("img").size()+' images on this page' );
// ...per-node event function registration  (doesn't change the selection)
$('#tags span').click(  function(){alert('I am now clickable');}  )
// ...triggering registered events          (doesn't change the selection)
$('#tags span').click()
// ...get contents -- often operate only on the first element
$("div").html();
//   ...if you want some logic for each of these elements, you can use $.each (see below)

Some functions can be used as both setters and getters. (and as getters often work only on the first element), notably html(), attr(), and val():
html() (one of the manipulation functions) is DOM-to-strings without arguments, and strings-to-DOM when you do give arguments
// For example: copy the page title into the page (which is not really page content but you can still get it via html()) 
$('body').append( '<div id="foo"><b>' +$('title').html()+ '</b><br/></div>' );   //the html() there is a getter (no arguments)

val() [1], mostly used to get form values, e.g.
// get
$('#searchfield').val();
 
// set (here effectively appending something)
$('#searchfield').val( $('#searchfield').val()+' keyword' );

attr() (get or set node attributes)
//get parent node's DOM id:
$(this).parent.attr('id');
 
//set parent node's title attribute:
$(this).parent.attr('title','forks!');
Note: class is a space-separated token list, so you often want to use .addClass() and .removeClass() instead of setting class via attr()

// Or, say, outlines on everything on the page, with random colors
function randomcolor(){ return '#'+
  Math.floor(16+225*Math.random()).toString(16)+
  Math.floor(16+225*Math.random()).toString(16)+
  Math.floor(16+225*Math.random()).toString(16);
}
$('*').each(function(){
  $(this).css('outline','1px solid '+randomcolor());
});
// Note that $('*').css('outline','1px solid '+randomcolor());}) is valid code,
//   would executes randomcolor() once so would color everything the same.

// You ''could'' store a selection into a variable:
var jqselection = $('.headerclass');
// ...but this is generally only necessary when chaining functions can't express what you want


And for something superfluous:
// When you hover thr mouse over a paragraph, shift the text right 30px over a second. When the mouse leaves, put it back in 0.2 seconds.
$('p').hover(
  function () { $(this).animate( {marginLeft:"30px"}, 1000 ); }, 
  function () { $(this).animate( {marginLeft:"0px"},  200 );  }
);

For an overview of what functions are available in the jQuery core, see cheat sheets such as this one.
For more complete reference, see the API, in visual browser form such as in jquery api, jquery api browser, or visual jquery, or just the relevant sections of the documentation wiki (which should be the most up-to-date; few of the browsable references currently list prevAll() or nextAll(), new in 1.2).
See also various tutorials.
Please answer these qesutions:1. Do you have Tooo pay for a server or like pay Tooo have a website online?2. Besides Dreamweaver what are the costs to have a website online?3. How do you get a domain name, do you buy it and then set it as the domain through Dreamweaver.4. Like i mentioned earlier, what are the costs for having a site online?Do you pay for server's or Tooo have the site live online, Or anything?.?5. Please list MOSTLY ALL fee's for having a website online via Dreamweaver.
Element selection - selector notes
A query string can be both CSS-style selectors or simple XPath, so will easily handle id, class, relational position and other useful tests.
Note that jQuery interprets it, which removes any browser inconsistencies, and allows some advanced tests and pseudo-classes.
Again, see cheat sheets, and e.g. the jQuery API reference for selectors.

Basic selectors:
$('p') - all paragraph elements
$('span,div') - all spans and divs
$('.classy') - all elements with class 'classy' set
$('img.lower') - all img elements with class 'lower' set
$('#id_335') - the element with id="id_335"
These usually go a long way.

Further CSS-style selectors
$('p a') - direct or indirect children (decendants)
$('p>a') - direct children
$('th+td') - directly following sibling
$('input~') - all siblings
$('input~div') - specific siblings

Attribute-based selectors
$('a[@title]') - things with title attribute
$('a[@title="Image 1."]') - equivalence
$('a[@title^="Im"]') - starts with
$('a[@title$="."]') - ends with
$('a[@title*="mage"]') - contains
$('a[@title*="mage"][@alt*="mage"]') - multiple tests

Pseudoclasses, positional (indices are 0-based):
positional in selection
$('a:first'), $('a:last'), $(':eq(2)') - select first, last, and third link (...thing in the selection)
$('a:gt(2)'), $('a:lt(2)') - select fourth and later elements, select first two
 :even, :odd - you can guess by now.
Positional within document sibling set, in other words elements that are themselves the:
 :first-child, :last-child
 :nth-child(index)
 :only-child

Pseudoclasses, by content:
$('*:empty') - everything without children
$('*:parent') - everything that does have children (is a parent)
$('a:contains("click")') - links that probably say 'click here' - naughty naughty
$('div:has(a)') - divs with links in them (directly or indirectly)
 :not(selector) is mild magic that effectively negates sense of the inner selector. Examples:
$('div:not(a)'): divs that do not have an a directly under them
$('a:not(:gt(2))') - inner selector is '<2', so result is '>=2'
$('*:not(:parent)') gives the same results as $('*:empty')

Pseudoclasses, forms:
:input,
:text, :password, :radio, :checkbox
:button, :submit, :image, :reset
:file
:hidden
:checked, :selected
:enabled, :disabled

Pseudoclasses, styling:
:hidden, :visible
:animated
:header: refers to h1 through h6
If you need more that you cannot easily build with the above, question whether what you are wishing for can't be done in another way, or look at plugins such as Extra selectors for JQuery.
Element selection - code notes
You'll often use $('querystring') to start a selection (which acts like $(document).find('query')).
.filter() is also quite useful, in case you can't do all your selection in one go, you can filter down a selection with another query.

The element-centric variations are also occasionally useful:
$('query',element) searches the dom subtree under a specific element. (An alternative for the same would be $(element).find('xpquery'))
$(element) constructs a selection from a single DOM element reference, or from an array of them.
This also allows $(window) and $(document), though note that you should have jQuery loaded in each to actually use jQuery across documents.

Note $ is just a very short reference to an object called jQuery; jQuery===$, and you can extend jQuery by adding functions to that object

Events
jQuery comes with its own event binding functions, useful in that it is consistent across all browsers. You should generally not use other ways of triggering events at the same time (e.g. onsomething="" attributes) since that can interact badly.

Example of binding: Make the paragraph you click larger than all others others - and, oh, yellow.
$('p').click(function() { 
    $('p').css('font-size','100%').css('background-color','transparent');
   $(this).css('font-size','120%').css('background-color','#ffa'); 
 });
Notes:
adds as many click handlers as there are p tags.
this overwrites style, which is a a nasty way of doing this in that it assumes that won't mess up other style. On a larger scale, it would be much cleaner to set/clear a specific class and control styling via a stylesheet.
this demonstrates how this is the DOM element reference, not a jQuery object. and that you have to make ijQuery-ized again before using it that way.


One of the most useful events is the DOM-ready one: $(document).ready(function), often used in its shorthand form, and with code right there in an (anonymous) function: $(function() { code here } ).
If the DOM is ready (meaning you can start interacting with it) the function will be executed immediately. If it isn't ready ye, the function will be remembered and executed when it is.

Helper functions
These work on more primitive data instead of element lists:
$.each(o,f) can iterate over objects, arrays,and hashes, so you can do:
h={'a':2,3:'d'};
a=[5,6,7,8];
$.each( h, function(i) { alert('['+i+']: '+this); } )
$.each( a, function(i) { alert('['+i+']: '+this); } )
$.grep(a,f[,b]) arrays (filtering) (can be positive and negative filter, see third argument)
$.map(a,f) for arrays
$.merge(a,othera) merges arrays. (also filters out duplicates)
$.extend(o,other) lists and hashes with others.