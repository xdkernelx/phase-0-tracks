#Notes on JQuery
##Nestor Alvarez

I am going to try something different here. Sometimes, the most efficient way to learn new things,
especially in the matter of coding isn't to go out and search for the information yourself.

In coding, if you have the possibility to do so, you can learn more from people who have already
done the robust research and implemented many tasks with current syntax and APIs.

As such, I plan on learning JQuery, not from Google and StackOverflow--although that will be used--
but from fellow members of my cohort. I plan on studying their implementations and seeing what makes
their code tick. 

For this exercise, I will looking at two people: paulliu87 and parkynj (GitHub usernames)

Some of the key differences between the two people is that paulliu87 uses scripts inside his HTML, while
parkynj uses it in a separate file. 

The syntax is pretty clear. paulliu87 uses JQuery from the JQuery website, while parkyngj uses a Google
version of it. They both seem to be the latest versions. Still, comparing both of these users, there is 
redundancy that is apparent. One uses .on("click", ACTION) while the other uses .click(ACTION)

In testing out both, paulliu87 doesn't seem to have a way to revert back to the original settings after
each click. It's a one time animation. 

In parkyngj's case, once the button is clicked once and the .after method prints out a a new "kamoji,"
if there are multiple clicks, there will be a repeating "kamoji" without an end. So perhaps adding
a condition where .after is only called once may be needed.

After studying their syntax and looking at the documentation for the things both users uses, I feel
like I am ready to do a very simple practice run. I will not do anything better, but it was definitely a
a concise manner to learn what is going on through implementation rather than looking at raw docs alone.

