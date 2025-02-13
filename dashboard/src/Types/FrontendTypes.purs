module Types.FrontendTypes where

-- Define any shared types for the frontend here.
type User = { id :: Int, name :: String }

defaultUser :: User
defaultUser = { id: 0, name: "Guest" }
