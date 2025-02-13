module Flux.Engine.Validator (validateWorkflow) where

import Flux.Types.Workflow (Workflow(..))
import Flux.Types.Error (FluxError(..))

-- Validates a workflow; here, simply ensuring that it contains at least one step.
validateWorkflow :: Workflow -> Either FluxError ()
validateWorkflow (Workflow steps)
  | null steps = Left (ValidationError "Workflow must contain at least one step.")
  | otherwise  = Right ()
