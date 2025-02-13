module Main where

import Flux.Types.Payment (Payment(..))
import Flux.Types.Workflow (Workflow(..), exampleWorkflow)
import Flux.Types.Error (FluxError(..))
import Flux.Engine.Interpreter (interpretWorkflow)
import Flux.Engine.Validator (validateWorkflow)
import Flux.DSL.Parser (parseDSL, DSLAST(..))
import Flux.DSL.Compiler (compileDSL)

main :: IO ()
main = do
    putStrLn "Welcome to Flux Core Engine"
    
    -- Validate the example workflow
    case validateWorkflow exampleWorkflow of
      Left err -> putStrLn $ "Validation error: " ++ show err
      Right () -> putStrLn "Workflow validated successfully."
    
    -- Interpret the workflow
    putStrLn "\nInterpreting Workflow:"
    interpretWorkflow exampleWorkflow

    -- Example DSL processing
    let dslCode = "example dsl code"
    case parseDSL dslCode of
      Left err -> putStrLn $ "Parse error: " ++ err
      Right ast -> do
          putStrLn "\nDSL parsed successfully."
          let compiledWorkflow = compileDSL ast
          putStrLn $ "Compiled DSL to workflow: " ++ show compiledWorkflow
