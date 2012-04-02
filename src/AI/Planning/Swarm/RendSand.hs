-----------------------------------------------------------------------------
--
-- Module      :  AI.Planning.Swarm.RendSand
-- Copyright   :  2012 (c) Mahmut Bulut
-- License     :  BSD3
--
-- Maintainer  :  Mahmut Bulut <mahmutbulut0@gmail.com>
-- Stability   :  unstable
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module AI.Planning.Swarm.RendSand where

import Data.List (intercalate)
import AI.Planning.Swarm.SandData

rendSandData :: SandData -> String

rendSandData (AgentName s) = show s
rendSandData (AgentNum a) = show a
rendSandData (AgentPort p) = show p
rendSandData (AgentCoor co) = undefined
rendSandData (AgentObj fr) = undefined
rendSandData (AgentObjCoor re) = undefined
