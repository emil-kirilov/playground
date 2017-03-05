import Data.Map
import Text.Printf
import System.Environment

home =  ["couch", "chair", "table", "stove"] 
days = fromList
        [ ("Sun",  "Sunday"     )
        , ("Mon",  "Monday"     )
        , ("Tue",  "Tuesday"    )
        , ("Wed",  "Wednesday"  )
        , ("Thu",  "Thursday"   )
        , ("Fri",  "Friday"     )
        , ("Sat",  "Saturday"   ) ]

--main = print ("Tue in long form is " ++ findWithDefault "Not found" "Tue" days)

--main = do
--  src <- readFile "jsonExample"
--  putStr src

--main = interact id
--$ runhaskell test.hs < test.hs

--main    = interact count
--count s = show (length s) ++ "\n"
--$ runhaskell test.hs < test.hs

--main = interact (count . lines)
--count s = show (length s) ++ "\n"
--$ runhaskell test.hs < test.hs


 
main = do
  [f,g] <- getArgs
  s     <- readFile f
  writeFile g s
--$ runhaskell test.hs jsonExample copyOfJsonExample
