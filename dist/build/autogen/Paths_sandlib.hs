module Paths_sandlib (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,3], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/mahmutbulut0/.cabal/bin"
libdir     = "/Users/mahmutbulut0/.cabal/lib/sandlib-0.0.3/ghc-7.4.1"
datadir    = "/Users/mahmutbulut0/.cabal/share/sandlib-0.0.3"
libexecdir = "/Users/mahmutbulut0/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "sandlib_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "sandlib_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "sandlib_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "sandlib_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
