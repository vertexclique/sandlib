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

rendSandData :: SandData -> Maybe String

rendSandData (AgentName s) = Just (show s)
rendSandData (AgentNum a) = Just (show a)
rendSandData (AgentPort p) = Just (show p)
rendSandData (AgentCoor co) = Just ((:co) )
rendSandData (AgentObj fr) = undefined
rendSandData (AgentObjCoor re) = undefined

-- error bound olarak bunu sectim overlap pattern olabilir
-- simdilik yorum olarak kalsın
-- rendSandData _ = Nothing
