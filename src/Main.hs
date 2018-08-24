module Main where

import           Criterion.Main
import           Control.Monad.ST
import           Data.STRef
import           Control.Monad.Loops
import           Control.Monad.Extra

bigSumNaive :: Int -> Int
bigSumNaive n = sum $ filter(\x -> mod x 7 == 0 && mod x 5 /= 0) [1..n]

bigSumOrig :: Int -> Int
bigSumOrig n = sum $ takeWhile (<n) $ scanl (+) 7 $ cycle [7, 7, 7, 14]

bigSumListComprehension:: Int -> Int
bigSumListComprehension n = sum $ takeWhile (<n) [x | x <- [7,14..] , mod x 5 /= 0 ]

bigSumDropEvery:: Int -> Int
bigSumDropEvery n = sum $ takeWhile (<n) $ dropEvery 5 [7,14..]
  where
    dropEvery _ [] = []
    dropEvery n xs = take (n-1) xs ++ dropEvery n (drop n xs)

bigSumTailRec :: Int -> Int
bigSumTailRec n = summer 7 0
  where
    summer i s
      | i > n = s
      | mod i 5 /= 0 = summer (i+7) (i+s)
      | otherwise = summer (i+7) s

bigSumStateRef :: Int -> Int
bigSumStateRef n = runST $ do
    ref <- newSTRef 0
    count <- newSTRef 0
    whileM_ (count #< n) $ do
      whenM (count #% 5) $ ref #=# (ref #+# count)
      modifySTRef count (+7)
    readSTRef ref
  where
    (#<) :: Ord a => STRef s a -> a -> ST s Bool
    (#<) r x = (<) <$> readSTRef r <*> pure x

    (#%) :: Integral a => STRef s a -> a -> ST s Bool
    (#%) r x = ((0 /=) .) . mod <$> readSTRef r <*> pure x

    (#+#) :: Integral a => STRef s a -> STRef s a -> ST s a
    (#+#) r x = (+) <$> readSTRef r <*> readSTRef x

    (#=#) :: STRef s a -> ST s a -> ST s ()
    (#=#) r x = writeSTRef r =<< x

main :: IO()
main =  defaultMain [
  bgroup "big sum" [ bench "naive" $ whnf bigSumNaive n
                   , bench "orignal" $ whnf bigSumOrig n
                   , bench "list comprehension" $ whnf bigSumListComprehension n
                   , bench "drop every" $ whnf bigSumDropEvery n
                   , bench "tail recursion" $ whnf bigSumTailRec n
                   , bench "state ref" $ whnf bigSumStateRef n
                   ]
  ]
  where n = 100000000
