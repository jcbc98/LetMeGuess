-- Let me guess your number

checkanswer :: Char -> Int -> Int -> Int -> IO ()
checkanswer 'C' n _ _ = 
  do putStrLn ("I guessed that " ++ (show n :: String) ++ " was your number!")
checkanswer 'L' g l h =
  do if g+1 > h
       then putStrLn "You cheated!"
       else mkguess (g+1) h
checkanswer 'H' g l h =
  do if g-1 < l
       then putStrLn "You cheated!"
       else mkguess l (g-1)
checkanswer _ _ l h =
  do putStrLn "That is not one of the possible answers. Let's try again."
     mkguess l h

mkguess :: Int -> Int -> IO ()
mkguess low high =
  do let guess = div (low + high) 2
     putStrLn ("Is your number " ++ (show guess :: String) ++ "?")
     putStrLn "(L for Low, H for High, C for Correct)"
     ans <- getLine
     checkanswer (ans!!0) guess low high 

letmeguess :: Int -> IO ()
letmeguess n =
  do if n <= 0
       then putStrLn "You must provide a number larger than 0."
       else do
         putStrLn ("Think of a number between 1 and " ++ (show n :: String) ++ ".")
         putStrLn "I will guess your number as long as you honestly tell me whether my guess is too low or high."
         mkguess 1 n
