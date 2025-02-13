module Flux.Engine.Interpreter (interpretWorkflow) where

import Flux.Types.Workflow (Workflow(..), Step(..))
import Flux.Types.Payment (paymentId)

-- A simple interpreter that prints out each step of the workflow.
interpretWorkflow :: Workflow -> IO ()
interpretWorkflow (Workflow steps) = mapM_ runStep steps
  where
    runStep :: Step -> IO ()
    runStep (ValidatePayment p) = putStrLn $ "Interpreting: Validating payment " ++ show (paymentId p)
    runStep (ProcessPayment p)  = putStrLn $ "Interpreting: Processing payment " ++ show (paymentId p)
