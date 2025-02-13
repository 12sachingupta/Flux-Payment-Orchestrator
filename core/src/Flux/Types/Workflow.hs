module Flux.Types.Workflow where

import Flux.Types.Payment (Payment(..))

-- Define a step in a payment workflow.
data Step = ValidatePayment Payment 
          | ProcessPayment Payment
  deriving (Show, Eq)

-- A workflow is a sequence of steps.
newtype Workflow = Workflow [Step]
  deriving (Show, Eq)

-- An example workflow for demonstration purposes.
exampleWorkflow :: Workflow
exampleWorkflow = Workflow
  [ ValidatePayment (Payment 1 100.0 "USD")
  , ProcessPayment (Payment 1 100.0 "USD")
  ]
