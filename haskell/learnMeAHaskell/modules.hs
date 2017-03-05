import Data.List (group, sort, words, find)
import Data.Char (chr, ord, digitToInt)

wordNums :: String -> [(String, Int)]
wordNums = map (\words -> (head words, length words)) . group . sort . words 

encode :: Int -> String -> String
encode offset message = map (\char -> chr $ ord char + offset) message

decode :: Int -> String -> String
decode offset message = encode (negate offset) message

--           lazy    accum
--foldr       Y        Y
--foldr'      N        Y
--foldr1      Y        N
--foldr1'     N        N

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> n == digitSum x) [1..]

findKey :: (Eq k) => k -> [(k, v)] -> Maybe b
findKey key [] = Nothing
findKey key ((k,v):xs)
  | key == k   = Just v         
  | otherwise  = findKey key xs

findKey' :: (Eq k) => k -> [(k, v)] -> Maybe b
findKey' key map = foldr (\(k, v) acc -> if key == k then Just v else acc) Nothing map
