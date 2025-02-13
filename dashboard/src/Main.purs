module Main where

import Prelude
import Effect (Effect)
import Effect.Aff (launchAff_)
import Halogen.VDom.Driver (runUI)
import Halogen.Aff.Util (awaitBody)
import Components.App as App

main :: Effect Unit
main = launchAff_ do
  body <- awaitBody
  _ <- runUI App.app unit body
  pure unit
