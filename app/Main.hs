module Main where


import qualified Game --import Game.hs
import qualified Random --import Random.hs
import Control.Monad.State
import System.Random --This library deals with the common task of pseudo-random number generation.

--Choose between a User-Game or auto(random)-generated game
--player has the option to choose in the terminal

main :: IO ()                   
main = do
    seed  <- newStdGen
    let arr = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
    let (i, seed2) = Random.rndInt (0, 3) seed
    let (j, seed3) = Random.rndInt (0, 3) seed2
    let (before, selected:after) = splitAt (i) arr
    let (rb, _:ra) = splitAt (j) selected
    let new = rb ++ [2] ++ ra
    let arr = before ++ [new] ++ after
    putStrLn "Enter game mode(1-User/2-Auto): "
    mode <- getChar
    if mode == '1'
        then do
            let s = Game.playGameUser seed3
            runStateT s arr >> return ()
        else do
            let s= Game.playGameRnd seed3
            runStateT s arr >> return ()

    
        




