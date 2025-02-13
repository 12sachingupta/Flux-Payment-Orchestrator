module Flux.Types.Payment where

-- A simple Payment type definition.
data Payment = Payment
  { paymentId :: Int
  , amount    :: Double
  , currency  :: String
  } deriving (Show, Eq)
