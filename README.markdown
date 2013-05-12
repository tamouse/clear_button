# Clear button conundrum
Can anyone please tell me why the following test fails:

*rspec spec/requests/pages_spec.rb -e "Pages clear button should not show the string 'blah'"*

You can run a [*server*](http://localhost:3000/pages/input) to convince yourself that the clear button does seem to be doing the right thing.

I think there is some problem with the test not following the redirect, but not sure how to solve that.
Btw/ if the problem is not the test, but the design, comments are even more welcome, because finding a trick to fix a bad design is not what I'm after.

## Thanks!

[*Assaf Shomer*](mailto:assafshomer@gmail.com)
