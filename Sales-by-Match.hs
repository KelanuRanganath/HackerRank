import Data.List as DL

parseInput :: String -> [Int]
parseInput = (map read).words

sortSum :: [Int] -> Int
sortSum = sum.(map ((flip div 2).length)).DL.group.DL.sort.tail

main :: IO ()
main = interact $ show.sortSum.parseInput
