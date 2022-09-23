# Let Me Guess - a simple guessing game in Haskell

Let the computer try to guess the number you are thinking of! 

Once loaded into GHCi, call the `letmeguess` function with the upper limit, which is inclusive, of the guessable numbers. The lower limit is 1. The upper limit provided must be at least 1.

Here is a sample run:

    *Main> letmeguess 20
    Think of a number between 1 and 20.
    I will guess your number as long as you honestly tell me whether my guess is too low or high.
    Is your number 10?
    (L for Low, H for High, C for Correct)
    L
    Is your number 15?
    (L for Low, H for High, C for Correct)
    L
    Is your number 18?
    (L for Low, H for High, C for Correct)
    H
    Is your number 16?
    (L for Low, H for High, C for Correct)
    L
    Is your number 17?
    (L for Low, H for High, C for Correct)
    C
    I guessed that 17 was your number!
