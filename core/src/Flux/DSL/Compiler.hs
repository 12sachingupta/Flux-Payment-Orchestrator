module Flux.DSL.Compiler (compileDSL) where

import Flux.DSL.Parser (DSLAST(..))
import Flux.Types.Workflow (Workflow(..), Step(..))
import Flux.Types.Payment (Payment(..))

-- A dummy compiler that converts a DSL abstract syntax tree into a workflow.
-- For demonstration, it creates a workflow with a single ProcessPayment step.
compileDSL :: DSLAST -> Workflow
compileDSL (DSLAST _) =
    let dummyPayment = Payment 42 200.0 "USD"
    in Workflow [ProcessPayment dummyPayment]
