module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = readFile "input" >>= print . sum . map readSignedInt . lines

readSignedInt :: String -> Int
readSignedInt ('+':s) = read s
readSignedInt ('-':s) = -1 * read s
readSignedInt s = error $ "invalid line: " ++ s