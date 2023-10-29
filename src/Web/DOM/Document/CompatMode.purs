module Web.DOM.Document.CompatMode where

import Data.Maybe (Maybe(..))

data CompatMode
  = BackCompat
  | CSS1Compat

parse ∷ String -> Maybe CompatMode
parse = case _ of
  "BackCompat" -> Just BackCompat
  "CSS1Compat" -> Just CSS1Compat
  _ -> Nothing

print ∷ CompatMode -> String
print = case _ of
  BackCompat → "BackCompat"
  CSS1Compat → "CSS1Compat"
