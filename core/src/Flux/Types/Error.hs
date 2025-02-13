module Flux.Types.Error where

-- Error type used across the core engine.
data FluxError = ValidationError String 
               | ParsingError String
  deriving (Show, Eq)
