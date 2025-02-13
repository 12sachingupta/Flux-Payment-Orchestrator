module Flux.DSL.Parser (parseDSL, DSLAST(..)) where

import Flux.Types.Error (FluxError(..))

-- A dummy abstract syntax tree for the DSL.
data DSLAST = DSLAST String
  deriving (Show, Eq)

-- A basic parser that wraps the input into a DSLAST.
parseDSL :: String -> Either String DSLAST
parseDSL input
  | null input = Left "DSL input is empty."
  | otherwise  = Right (DSLAST input)
