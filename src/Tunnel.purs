module Tunnel where

import Prelude(map, negate)
import Data.List((..))

type Point = { x :: Number, y :: Number }

data Activity = Waiting | Playing | Done

type Player =
  { location  :: Point
  , vlocation :: Point
  }

type Tunnel =
  { ampl     :: Number
  , location :: Point
  , size     :: Point
  , speed    :: Int
  }

type Piece =
  { location  :: Point
  , size      :: Point
  , vlocation :: Point
  }

type Fragment =
  { degree    :: Number
  , location  :: Point
  , vlocation :: Point
  }

type Game =
  { activity  :: Activity
  , count     :: Int
  , fragments :: Array Fragment
  , pieces    :: Array Piece
  , player    :: Player
  , score     :: Int
  , tunnel    :: Tunnel
}

initialPieces :: Array Piece
initialPieces = map (\n -> { location: { x: 0.0, y: 0.0 }, size: { x: 0.0, y: 0.0 }, vlocation: { x: 0.0, y: 0.0 } }) [0..60]

initial :: Game
initial =
  { activity: Waiting
  , count: 0
  , fragments: []
  , pieces: initialPieces
  , player: { location: { x: 0.0, y: 0.0 }, vlocation: { x: 0.0, y: 0.0 }}
  , score: 0
  , tunnel: { ampl: 1.1, location: { x: 0.0, y: 0.0 }, size: { x: 0.0, y: 0.0 }, speed: 1 }
}
